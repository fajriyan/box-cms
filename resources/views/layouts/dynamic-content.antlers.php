




<div>
  <div class="" id="toc-source">
    {{ content_dynamic }}
    <!-- <div class="content-article [&>p]:mb-5">
      {{ text }}
    </div> -->
    {{ if type == "pricing_component" }}
    <section class="py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <h2 class="text-3xl font-extrabold text-gray-900">{{ headers }}</h2>
        </div>

        <div class="mt-16 grid gap-8 md:grid-cols-2 lg:grid-cols-3">
          {{ content }}
          <div class="bg-white p-8 rounded-lg border border-slate-300">
            <img
              src="{{ image }}"
              alt="Plan Image"
              class="w-[250px] h-[250px] mx-auto mb-4 rounded-full border-4 border-yellow-500"
            />
            <p
              id="priceBasic"
              class="mt-4 text-3xl font-bold text-gray-900 text-center"
            >
              ${{ price
              }}<span class="text-sm font-normal text-gray-500">/mo</span>
            </p>
            <p class="mt-2 text-gray-500 text-center">
              {{ short_description }}
            </p>
            <ul class="mt-6 space-y-4 text-gray-600">
              <li>✔ Dummy Fitur Satu</li>
              <li>✔ Dummy Fitur Dua</li>
              <li>✔ Dummy Limited Fitur</li>
            </ul>
          </div>
          {{/content}}
        </div>
      </div>
    </section>
    {{ elseif type == "image_content_component" }}
    <section class="py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="mt-16 flex {{ align == "Right" ? "flex-row " : "flex-row-reverse"}} gap-10">
          <div class="w-1/2">
            <h3 class="text-3xl font-extrabold text-gray-900">{{ headers }}</h3>
            <div class="text-gray-500 mt-2">{{ description }}</div>
          </div>
          <div class="w-1/2">
            <img
              src="{{ image }}"
              class="h-[400px] rounded-lg w-full object-cover"
              alt=""
            />
          </div>
        </div>
      </div>
    </section>
    {{ elseif type == "overview_component" }}
     <section class="py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="mt-16 ">
          <div class="">
            <h3 class="text-3xl font-extrabold text-gray-900">{{ headers }}</h3>
            <div class="text-gray-500 mt-2">{{ description }}</div>
          </div>
        </div>
      </div>
    </section>
    {{ elseif type == "testimonial_component" }}
    <section class="py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
         <div class="bg-white">
            <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
            />

            <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
            <div class="py-16 bg-white">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
               <h2 class="text-3xl font-extrabold text-center text-gray-900">{{headers}}</h2>

               <div class="mt-5">
                  <div class="swiper testimonialSwiper">
                  <div class="swiper-wrapper">
                     {{content}}
                     <div class="swiper-slide">
                        <div class="p-8 border border-slate-300 rounded-lg text-center w-full mx-auto min-h-[100px] ">
                        <p class="text-gray-700 italic">"{{short_description}}"</p>
                        <p class="mt-4 font-semibold text-gray-900">— {{price}}</p>
                        </div>
                     </div>
                     {{/content}}
                  </div>
                  <div class="swiper-pagination mt-6 !static"></div>
                  </div>
               </div>
            </div>
            </div>
            <script>
            new Swiper(".testimonialSwiper", {
               loop: true,
               pagination: {
                  el: ".swiper-pagination",
                  clickable: true,
               },
               autoplay: {
                  delay: 2000,
               },
               slidesPerView: 1,
               spaceBetween: 30,
               breakpoints: {
                  640: {
                  slidesPerView: 1,
                  },
                  768: {
                  slidesPerView: 1,
                  },
                  1024: {
                  slidesPerView: 1,
                  },
               },
            });
            </script>
         </div>
      </div>
    </section>
    {{ /if }}
    {{ /content_dynamic }}
  </div>
</div>
