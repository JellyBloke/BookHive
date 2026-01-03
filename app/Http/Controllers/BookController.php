<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Author;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

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
        $rules = [
            'title' => 'required|unique:books',
            'author_name' => 'required',
            'category_name' => 'required',
            'stock' => 'required|numeric|min:1'
        ];

        $messages = [
            'required' => ':attribute must not be empty.',
            'unique' => 'This :attribute has already exist.',
            'numeric' => ':attribute must be numeric.',
            'min' => ':attribute must be at least :min.'
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator)->with('danger', 'All fields must be filled in.');
        } else {
            $author = Author::firstOrCreate([
                'name' => $request->author_name
            ]);

            $category = Category::firstOrCreate([
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
    }


    /**
     * Display the specified resource.
     */
    public function show(Book $book)
    {
        $book->load(['author', 'category', 'borrowings']);
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
        $rules = [
            'title' => 'required|unique:books,title,' . $book->id,
            'author_name' => 'required',
            'category_name' => 'required',
            'stock' => 'required|numeric|min:0'
        ];

        $messages = [
            'required' => ':attribute must not be empty.',
            'unique' => 'This :attribute has already exist.',
            'numeric' => ':attribute must be numeric.',
            'min' => ':attribute must be at least :min.'
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator)->with('danger', 'All fields must be filled in.');
        } else {
            $book->update([
                'title' => $request->title,
                'author_id' => $request->author_name,
                'category_id' => $request->category_name,
                'stock' => $request->stock
            ]);

            return redirect()->route('books.index')->with('success', 'The book has been successfully edited.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Book $book)
    {
        $book->delete();

        return redirect()->route('books.index')->with('success', 'The book has been deleted successfully.');
    }
}
