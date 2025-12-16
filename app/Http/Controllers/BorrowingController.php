<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Borrowing;


class BorrowingController extends Controller
{
    public function store(Request $request, Book $book)
    {
        if ($book->stock < 1) {
            return back()->withErrors('Book is out of stock');
        }

        $request->validate([
            'borrower_name' => 'required|string|max:255',
        ]);

        Borrowing::create([
            'book_id' => $book->id,
            'borrower_name' => $request->borrower_name,
            'borrowed_at' => now(),
        ]);

        $book->decrement('stock');

        return back()->with('success', 'Book borrowed successfully');
    }

    public function return(Borrowing $borrowing)
    {
        if ($borrowing->returned_at) {
            return back();
        }

        $borrowing->update([
            'returned_at' => now(),
        ]);

        $borrowing->book->increment('stock');

        return back()->with('success', 'Book returned successfully');
    }
}

