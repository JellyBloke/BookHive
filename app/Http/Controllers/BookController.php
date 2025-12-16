<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Author;
use App\Models\Category;
use Illuminate\Http\Request;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $books = Book::with(['author', 'category'])->get();
        return view('books.index', compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $authors = Author::all();
        $categories = Category::all();
        return view('books.create', compact('authors', 'categories'));
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'author_name' => 'required',
            'category_name' => 'required',
            'stock' => 'required|integer|min:0',
        ]);

        $author = Author::create([
            'name' => $request->author_name
        ]);

        $category = Category::create([
            'name' => $request->category_name
        ]);

        Book::create([
            'title' => $request->title,
            'author_id' => $author->id,
            'category_id' => $category->id,
            'stock' => $request->stock,
        ]);

        return redirect()->route('books.index');
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return view('books.show', compact('book'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Book $book)
    {   
        $authors = Author::all();
        $categories = Category::all();
        return view('books.edit', compact('book', 'authors', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Book $book)
    {
        $request->validate([
            'title' => 'required',
            'author_id' => 'required|exists:authors,id',
            'category_id' => 'required|exists:categories,id',
            'stock' => 'required|integer|min:0',
        ]);


        $book->update([
            'title' => $request->title,
            'author_id' => $request->author_id,
            'category_id' => $request->category_id,
            'stock' => $request->stock,
        ]);


        return redirect()->route('books.index')
        ->with('success', 'Book updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Book $book)
    {
        $book->delete();

        return redirect()->route('books.index')
        ->with('success', 'Book deleted successfully');
    }
}
