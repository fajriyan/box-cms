<section class="container mx-auto pt-[40px]">
  <img
    src="https://images.unsplash.com/photo-1698997307977-36e84c891844?q=80&w=1992&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    alt=""
    class="h-[270px] w-full object-cover object-center rounded-md"
  />
</section>

<section
  class="bg-white dark:bg-gray-900 container mx-auto mt-[60px] mb-[100px]"
>
  <div class="">
    <div class="">
      <h2
        class="mb-4 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white"
      >
        {{ main_heading }}
      </h2>
      <p class="mb-5 font-light text-gray-500 sm:text-xl dark:text-gray-400">
        {{ main_description }}
      </p>
    </div>
    <div class="grid grid-cols-3 gap-10 mt-7">
      {{ pricing_grid }}
      <div
        class="flex flex-col justify-between p-6 mx-auto max-w-lg text-center text-gray-900 bg-white rounded-lg border border-gray-100 shadow dark:border-gray-600 xl:p-8 dark:bg-gray-800 dark:text-white"
      >
        <div class="">
          <h3 class="mb-4 text-2xl font-semibold">{{ title }}</h3>
          <p class="font-light text-gray-500 sm:text-md dark:text-gray-400">
            {{ description }}
          </p>
          <div class="flex justify-center items-baseline my-8">
            <span class="mr-2 text-5xl font-extrabold">{{ price }}</span>
          </div>
          <ul role="list" class="mb-8 space-y-2 text-left">
            {{
              featured
            }}
            <li class="flex items-center space-x-3">
              <svg
                class="flex-shrink-0 w-5 h-5 text-green-500 dark:text-green-400"
                fill="currentColor"
                viewBox="0 0 20 20"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path
                  fill-rule="evenodd"
                  d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                  clip-rule="evenodd"
                ></path>
              </svg>
              <span>{{ item }}</span>
            </li>
            {{ /featured }}
          </ul>
        </div>
        <a
          href="/booking/{{ id }}"
          class="text-white bg-slate-600 hover:bg-slate-700 focus:ring-4 focus:ring-primary-200 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:text-white dark:focus:ring-primary-900"
          >Pilih Paket</a
        >
      </div>
      {{ /pricing_grid }}
      <div class="w-full">
        {{ livewire:Components.PricingCalculator }}
      </div>
    </div>
  </div>
</section>

<section class="bg-white py-8 antialiased dark:bg-gray-900 md:py-16">
  <div class="container mx-auto">
    <div class="mx-auto">
      <div class="gap-4 sm:flex sm:items-center sm:justify-between">
        <h2
          class="mb-8 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white"
        >
          {{ heading_testimoni }}
        </h2>

        <div class="mt-6 sm:mt-0">
          <select
            id="order-type"
            class="block w-full min-w-[8rem] rounded-lg border border-gray-300 bg-gray-50 p-2.5 text-sm text-gray-900 focus:border-primary-500 focus:ring-primary-500 dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder:text-gray-400 dark:focus:border-primary-500 dark:focus:ring-primary-500"
          >
            <option selected>All reviews</option>
            <option value="5">5 stars</option>
            <option value="4">4 stars</option>
            <option value="3">3 stars</option>
            <option value="2">2 stars</option>
            <option value="1">1 star</option>
          </select>
        </div>
      </div>
      <div class="">
        {{ testimonial }}
        <div
          class="flex justify-between border border-slate-300 p-5 rounded-md mb-3"
        >
          <div class="w-[80%]">
            {{ value }}
            <p class="font-bold">{{ person }}</p>
          </div>
          <div class="flex items-center space-x-1">
            <div class="flex items-center space-x-1">
              {{ range from="1" to="5" }}
              {{ if rating >= value }}
              <svg
                class="w-5 h-5 text-yellow-400"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z"
                ></path>
              </svg>
              {{ else }}
              <svg
                class="w-5 h-5 text-gray-300"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z"
                ></path>
              </svg>
              {{ /if }}
              {{ /range }}
            </div>
          </div>
        </div>
        {{ /testimonial }}
      </div>
    </div>
  </div>
</section>

<section class="bg-white dark:bg-gray-900 my-[100px]">
  <div class="container mx-auto">
    <h2
      class="mb-8 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white"
    >
      {{ heading_faq }}
    </h2>
    <div
      class="grid grid-cols-2 pt-8 text-left border-t border-gray-200 md:gap-10 dark:border-gray-700 md:grid-cols-2"
    >
      {{ faq_item }}
      <div class="">
        <h3
          class="flex items-center mb-4 text-lg font-medium text-gray-900 dark:text-white"
        >
          <svg
            class="flex-shrink-0 mr-2 w-5 h-5 text-gray-500 dark:text-gray-400"
            fill="currentColor"
            viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-8-3a1 1 0 00-.867.5 1 1 0 11-1.731-1A3 3 0 0113 8a3.001 3.001 0 01-2 2.83V11a1 1 0 11-2 0v-1a1 1 0 011-1 1 1 0 100-2zm0 8a1 1 0 100-2 1 1 0 000 2z"
              clip-rule="evenodd"
            ></path>
          </svg>
          {{ title }}
        </h3>
        <p class="text-gray-500 dark:text-gray-400">
          {{ description }}
        </p>
      </div>
      {{ /faq_item }}
    </div>
  </div>
</section>
