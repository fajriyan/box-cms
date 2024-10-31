<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Booking extends Model
{
    protected $fillable = [
        'name',
        'unique_id',
        'email',
        'location',
        'notes',
        'start_booking',
        'end_booking',
        'id_package',
        'name_package',
        'price',
    ];

}
