# Project Box-CMS
cms project using laravel, this time I used the statamic package as the core of the cms, in this project there is page management and many other collections.

### Technology
- Laravel 11
- Mysql
- Livewire 3
- TailwindCSS
- AlpineJS

### Screenshot 
- [Admin] Management Pages
- [Admin] Media Library
- [Admin] Career Manegement
- [Admin] Career Taxonomy
- [Admin] Management Booking
- [Admin] Detail Booking
- [Site] Homepage
- [Site] Booking
- [Site] Detail Booking
- [Site] Check Code Booking
- [Site] Career
- [Site] Detail Career


### Database 
you can download the database in the .sql file or in the `/backup` directory, [download](https://github.com/fajriyan/box-cms/tree/main/backup)


## How to run project
a few things that need to be prepared:
- php 8.3
- database (mysql)
- composer v2.7^ or above
- node v20.15^ or above


### Project Run Steps

1. Setup Database 
   ```
   make sure the database has been uploaded to the serve
   ```

2. Clone Project > Go to the project directory (terminal)
   ```
   git clone https://github.com/fajriyan/box-cms
   cd ahs
   ```

3. Copy .env.example & rename .env (terminal)
   ```
   cp .env.example .env
   ```

4. Setup Database Project (.env)
   ```
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=laravel
   DB_USERNAME=root
   DB_PASSWORD=
   ```

5. Setup SMTP Project (.env)
   ```
   MAIL_MAILER=smtp
   MAIL_HOST=127.0.0.1
   MAIL_PORT=2525
   MAIL_USERNAME=null
   MAIL_PASSWORD=null
   MAIL_ENCRYPTION=null
   MAIL_FROM_ADDRESS="hello@example.com"
   MAIL_FROM_NAME="${APP_NAME}"
   ```

6. Setup App Url & Assets Url (.env)
   ```
   APP_URL=http://127.0.0.1:8000 (change)
   ASSET_URL=http://127.0.0.1:8000 (change)
   ```

7. Install Dependency Composer (terminal)
   ```
   composer install
   ```

8. Install Dependency Node (terminal)
   ```
   node install
   ```

9. Generate Key Project (terminal)
   ```
   php artisan key:generate
   ```

10. Open Storage Link (terminal)
      ```
      php artisan storage:link
      ```

11. Run application (terminal)
      #### for development (2 terminal)
      ```
      php artisan serve
      ```
      ```
      npm run dev
      ```
      *by default laravel run in http://localhost:8000 / http://127.0.0.1:8000
      #### for production
      ```
      npm run build
      ```


12. done
