  <section class="bg-white dark:bg-gray-900 min-h-screen flex items-center">
    <div class="container mx-auto text-center">
      <a
        href="#"
        class="inline-flex justify-between items-center py-1 px-1 pr-4 mb-7 text-sm text-gray-700 bg-gray-100 rounded-full dark:bg-gray-800 dark:text-white hover:bg-gray-200 dark:hover:bg-gray-700"
        role="alert"
      >
        <span
          class="text-sm bg-primary-600 rounded-full text-red-600 px-4 font-bold py-1.5 mr-3"
          >New</span
        >
        <span class="text-sm font-medium">{{ secondary_text }}</span>
        <svg
          class="ml-2 w-5 h-5"
          fill="currentColor"
          viewBox="0 0 20 20"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            fill-rule="evenodd"
            d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
            clip-rule="evenodd"
          ></path>
        </svg>
      </a>
      <h1
        class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white"
      >
        {{ main_heading }}
      </h1>
      <p
        class="mb-8 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 xl:px-48 dark:text-gray-400"
      >
        {{ main_description }}
      </p>
      <div
        class="flex flex-col mb-8 lg:mb-16 space-y-4 sm:flex-row sm:justify-center sm:space-y-0 sm:space-x-4"
      >
        <a
          href="{{ link_button_left }}"
          class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg bg-slate-700 hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 dark:focus:ring-primary-900"
        >
          {{ text_button_left }}
          <svg
            class="ml-2 -mr-1 w-5 h-5"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
              clip-rule="evenodd"
            ></path>
          </svg>
        </a>
        <a
          href="{{ link_button_right }}"
          class="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-gray-900 rounded-lg border border-gray-300 hover:bg-gray-100 focus:ring-4 focus:ring-gray-100 dark:text-white dark:border-gray-700 dark:hover:bg-gray-700 dark:focus:ring-gray-800"
        >
          <svg
            class="mr-2 -ml-1 w-5 h-5"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M2 6a2 2 0 012-2h6a2 2 0 012 2v8a2 2 0 01-2 2H4a2 2 0 01-2-2V6zM14.553 7.106A1 1 0 0014 8v4a1 1 0 00.553.894l2 1A1 1 0 0018 13V7a1 1 0 00-1.447-.894l-2 1z"
            ></path>
          </svg>
          {{ text_button_right }}
        </a>
      </div>
      <div
        class="px-4 mx-auto text-center md:max-w-screen-md lg:max-w-screen-lg lg:px-36"
      >
        <span class="font-semibold text-gray-400 uppercase">{{
          mini_text_highlight_logo
        }}</span>
        <div
          class="flex flex-wrap justify-center gap-7 items-center mt-5 text-gray-500"
        >
        {{ logo_hightlight }}
          <a
            class="mr-5 mb-5 lg:mb-0 hover:text-gray-800 dark:hover:text-gray-400 hover:scale-110 duration-300"
          >
          <img src=" {{ logo }}" class="w-[80px] grayscale" alt="">
          </a>
        {{ /logo_hightlight }}

        </div>
      </div>
    </div>
  </section>

  <section class="bg-white dark:bg-gray-900 mt-[100px]">
    <div class="container mx-auto">
      <div class="mb-8 lg:mb-16">
        <h2
          class="mb-4 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white"
        >
          {{ heading_featured }}
        </h2>
        <p class="text-gray-500 sm:text-lg dark:text-gray-400">
          {{ featured_description }}
        </p>
      </div>
      <div
        class="space-y-8 md:grid md:grid-cols-2 lg:grid-cols-3 md:gap-12 md:space-y-0"
      >
        {{ featured_grid }}
        <div>
          <div
            class="flex justify-center items-center mb-4 w-10 h-10 rounded-full bg-primary-100 lg:h-12 lg:w-12 dark:bg-primary-900"
          >
            {{ icon }}
          </div>
          <h3 class="mb-2 text-xl font-bold dark:text-white">{{ title }}</h3>
          <p class="text-gray-500 dark:text-gray-400">
            {{ description }}
          </p>
        </div>
        {{ /featured_grid }}
      </div>
    </div>
  </section>

  <section class="bg-white dark:bg-gray-900 mt-[100px]">
    <div class="gap-16 items-center mx-auto container lg:grid lg:grid-cols-2">
      <div class="font-light text-gray-500 sm:text-lg dark:text-gray-400">
        <h2
          class="mb-4 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white"
        >
          {{ heading_us }}
        </h2>
        <p class="mb-4">
          {{ description_us }}
        </p>
        <p>
          We are strategists, designers and developers. Innovators and problem
          solvers. Small enough to be simple and quick.
        </p>
      </div>
      <div class="grid grid-cols-2 gap-4 mt-8">
        <img
          class="w-full rounded-lg invert grayscale"
          src="{{ picture_overview_1 }}"
          alt="office content 1"
        />
        <img
          class="mt-4 w-full lg:mt-10 rounded-lg grayscale"
          src="{{ picture_overview_2 }}"
          alt="office content 2"
        />
      </div>
    </div>
  </section>

  <section class="bg-white dark:bg-gray-900 mt-[100px]">
    <div class="container mx-auto text-center">
      <dl
        class="grid gap-12 mx-auto text-gray-900 sm:grid-cols-5 dark:text-white"
      >
      {{ statistic_grid }}
        <div class="flex flex-col items-center justify-center">
          <dt class="mb-2 text-3xl md:text-4xl font-extrabold">{{ number }}</dt>
          <dd class="font-light text-gray-500 dark:text-gray-400">
            {{ short_description }}
          </dd>
        </div>
      {{ /statistic_grid }}
    </div>
  </section>

  <section class="bg-white my-[100px]">
   

    <div class="container mx-auto grid grid-cols-2 md:grid-cols-4 gap-4">
      {{ gallery_best }}
      <img src="{{ url }}" alt="" class="rounded-lg h-[400px] w-full object-cover">
      {{ /gallery_best }}
      
    </div>
  </section>


