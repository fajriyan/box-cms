<?php

namespace App\Livewire\Pages;

use Illuminate\Support\Facades\DB;
use Livewire\Component;
use Statamic\Eloquent\Entries\Entry;
use Statamic\Eloquent\Taxonomies\Taxonomy;

class CareerApply extends Component
{
    public $slug;
    public $form;
    public $job;
    public $name;
    public $email;
    public $phone;
    public $link_linkedin;
    public $jobName;
    public $jobSalary;
    public $taxonomyPosition;
    public $taxonomyDivision;
    public $taxonomyRole;
    public $taxonomyLocation;

    protected $rules = [
        'name' => 'required|string|max:255',
        'email' => 'required|email|max:255',
        'phone' => 'required|string|max:20',
        'link_linkedin' => 'required|url',
    ];


    public function mount($slug)
    {
        $state = Entry::query()->where('slug', $slug)->first();
        $this->slug = $slug;
        $this->jobName = $state->title;
        $this->jobSalary = $state->salary;
        $this->taxonomyPosition = $state->career_position->slug;
        $this->taxonomyDivision = $state->career_division->slug;
        $this->taxonomyRole = $state->career_role->slug;
        $this->taxonomyLocation = $state->career_location->slug;
    }
    public function render()
    {
        $taxLoc = DB::table('taxonomy_terms')->get();

        return view('livewire.pages.career-apply', [
            'taxPosition' => $taxLoc->where('taxonomy', 'career_position'),
            'taxLocaction' => $taxLoc->where('taxonomy', 'career_location'),
            'taxRole' => $taxLoc->where('taxonomy', 'career_role'),
            'taxDivision' => $taxLoc->where('taxonomy', 'career_division'),
        ]);
    }

    public function submit()
    {
        $this->validate();
        DB::table('form_submissions')->insert([
            'id' => rand(1000, 9999999),
            'form' => "career_form",
            'data' => json_encode([
                'name' => $this->name,
                'email' => $this->email,
                'phone' => $this->phone,
                'link_linkedin' => $this->link_linkedin,
                'job_name' => $this->name,
                'job_salary' => $this->jobSalary,
                'job_position' => $this->taxonomyPosition,
                'job_division' => $this->taxonomyDivision,
                'job_role' => $this->taxonomyRole,
                'job_location' => $this->taxonomyLocation,
                'job_date' => now()->format('Y-m-d'),
            ]),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        redirect('karir/' . $this->slug);

        session()->flash('success', "Pendaftaran anda sudah Terkirim! Tunggu informasi melalui email : $this->email");
    }

}
