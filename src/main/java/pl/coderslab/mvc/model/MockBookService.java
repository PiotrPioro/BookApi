package pl.coderslab.mvc.model;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MockBookService {

    private List<Book> list = new ArrayList<>();

    public void addToList(Book book){
        this.list.add(book);
    }

    public List<Book> showBookList(){
        List<Book> books = this.list.stream()
                .sorted(Comparator.comparingLong(Book::getId))
                .collect(Collectors.toList());
        return books;
    }

    public Book showBook(int id){
        List<Book> book = list.stream()
                .filter(b -> b.getId() == id)
                .collect(Collectors.toList());
        return book.get(0);
    }

    public void deleteBook(int id){
        List<Book> book = list.stream()
                .filter(b -> b.getId() == id)
                .collect(Collectors.toList());
        list.remove(book.get(0));
    }
}
