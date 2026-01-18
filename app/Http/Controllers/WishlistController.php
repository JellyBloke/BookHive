<?php

namespace App\Http\Controllers;
use App\Models\Book;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class WishlistController extends Controller
{
    public function toggle(Book $book)
    {
        $user = Auth::user();

        $user->wishlist()->toggle($book->id);

        return back();
    }

    public function index()
    {
        $books = Auth::user()->wishlist()->with('author','category')->get();
        return view('wishlist.index', compact('books'));
    }
}
