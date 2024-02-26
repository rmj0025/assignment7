//
//  BookLogic.swift
//  assignment7
//
//  Created by user247998 on 2/25/24.
//

import Foundation

struct BookLogic {
    var books = [
        Book("Pride and Prejudice", "Jane Austen"),
        Book("Romeo and Juliet", "William Shakespeare"),
        Book("The Raven", "Edgar Allan Poe"),
        Book("Animal Farm", "George Orwell"),
        Book("The Illiad", "Homer"),
        Book("Frankenstein", "Mary Shelley"),
        Book("Dracula", "Bram Stoker"),
        Book("The Three Musketeers", "Alexandre Dumas"),
        Book("War and Peace", "Leo Tolstoy"),
        Book("To Kill a Mockingbird", "Harper Lee"),
        Book("The Art of War", "Sun Tzu"),
        Book("Crime and Punishment", "Fyodor Dostoevsky")
    ]
    
    func getCount() -> Int {
        return books.count
    }
    
    func getAuthor(_ index: Int) -> String {
        return books[index].author
    }
    
    func getTitle(_ index: Int) -> String {
        return books[index].title
    }
}
