<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Borrowing;
use Illuminate\Support\Facades\Validator;

class BorrowingController extends Controller
{
    public function store(Request $request, Book $book)
    {
        $rule = [
            'borrower_name' => 'required'
        ];

        $message = [
            'required' => ':attribute must not be empty.'
        ];

        $validator = Validator::make($request->all(), $rule, $message);

        if ($validator->fails()) {
            return redirect()->back()->withInput()->withErrors($validator)->with('danger', 'Borrower name must not be empty.');
        } else {
            Borrowing::create([
                'book_id' => $book->id,
                'borrower_name' => $request->borrower_name,
                'borrowed_at' => now(),
            ]);

            $book->decrement('stock');

            return redirect()->back()->with('success', 'Book has been successfully borrowed.');
        }
    }

    public function return(Borrowing $borrowing)
    {
        $borrowing->update([
            'returned_at' => now(),
        ]);

        $borrowing->book->increment('stock');

        return back()->with('success', 'Book returned successfully');
    }
}

