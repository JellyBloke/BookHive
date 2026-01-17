<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\LocaleController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\BorrowingController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// TODO: Middleware route for admin-only pages
// Route::middleware(['auth', 'role:admin'])->group(function() {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     })->name('dashboard');
// })

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::get('/', [BookController::class, 'index']);
Route::resource('books', BookController::class);

Route::post('/books/{book}/borrow', [BorrowingController::class, 'store'])
    ->name('books.borrow');

Route::post('/borrowings/{borrowing}/return', [BorrowingController::class, 'return'])
    ->name('borrowings.return');

Route::get('locale/{lang}', [LocaleController::class, 'setLocale']);
