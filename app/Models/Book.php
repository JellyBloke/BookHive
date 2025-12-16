<?php

namespace App\Models;
use App\Models\Author;
use App\Models\Category;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{   

    use HasFactory;
    protected $fillable = [
        'title',
        'author_id',
        'category_id',
        'stock'
    ];


    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function author() {
        return $this->belongsTo(Author::class);
    }

    public function borrowings() {
        return $this->hasMany(Borrowing::class);
    }
}
