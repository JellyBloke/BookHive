<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BorrowingController;

Route::get('/', [BookController::class, 'index']);
Route::resource('books', BookController::class);

Route::post('/books/{book}/borrow', [BorrowingController::class, 'store'])
    ->name('books.borrow');

Route::post('/borrowings/{borrowing}/return', [BorrowingController::class, 'return'])
    ->name('borrowings.return');

