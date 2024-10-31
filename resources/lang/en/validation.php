<?php 
return [
   'required' => ':attribute wajib diisi.',
   'email' => ':attribute harus berupa alamat email yang valid.',
   'max' => [
       'string' => ':attribute tidak boleh lebih dari :max karakter.',
   ],
   'min' => [
       'string' => ':attribute harus minimal :min karakter.',
   ],
   
   'attributes' => [
       'name' => 'Nama',
       'email' => 'Alamat Email',
       'password' => 'Kata Sandi',
       'idBooking' => 'ID Booking',
   ],
];
