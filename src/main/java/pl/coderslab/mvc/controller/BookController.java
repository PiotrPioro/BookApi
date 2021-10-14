package pl.coderslab.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.mvc.model.Book;
import pl.coderslab.mvc.model.MockBookService;

@Controller
@RequestMapping("/books")
public class BookController {

    private final MockBookService service;

    public BookController (MockBookService service){
        this.service = service;
    }

    @GetMapping("/form")
    public String formAddBook(){
        return "add-book";
    }

    @PostMapping
    public String addBook(@RequestParam String isbn, @RequestParam String title, @RequestParam String author, @RequestParam String publisher, @RequestParam String type){
        Book book = new Book(isbn, title, author, publisher, type);
        service.addToList(book);
        return "redirect:/books";
    }

    @GetMapping
    public String showListOfBook(Model model){
        model.addAttribute("bookList", service.showBookList());
        return "book-list";
    }

    @GetMapping("/showBook")
    public String showBookWithId(@RequestParam int id, Model model){
        model.addAttribute("book", service.showBook(id));
        return "show-book";
    }

    @GetMapping("/edit")
    public String formEditBook(@RequestParam int id, Model model){
        model.addAttribute("editBook", service.showBook(id));
        return "edit-book";
    }

    @PostMapping("/edit")
    public String editBook(@RequestParam long id, @RequestParam String isbn, @RequestParam String title, @RequestParam String author, @RequestParam String publisher, @RequestParam String type){
        Book book = new Book(id, isbn, title, author, publisher, type);
        int id2 = (int) id;
        service.deleteBook(id2);
        service.addToList(book);
        return "redirect:/books";
    }

    @GetMapping("/delete")
    public String deleteConfirm(@RequestParam String id, @RequestParam String title, Model model){
        model.addAttribute("id", id);
        model.addAttribute("title", title);
        return "delete-book";
    }

    @PostMapping("/delete")
    public String deleteBook(@RequestParam String id, @RequestParam String confirm){
        int id2 = Integer.parseInt(id);
        if("yes".equals(confirm)){
            service.deleteBook(id2);
        }
        return "redirect:/books";
    }
}
