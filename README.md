# Project Box-CMS
cms project using laravel, this time I used the statamic package as the core of the cms, in this project there is page management and many other collections.

### Technology
- Laravel 11
- Mysql
- Livewire 3
- TailwindCSS
- AlpineJS

### Screenshot 
- [Admin] Dashboard
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/39cf6d3a-53de-4c5f-aca5-164b9816e5f6" />

- [Admin] Management Pages
  <img width="1677" alt="image" src="https://github.com/user-attachments/assets/6b13cf58-e514-4a76-a10a-c1a1a10c002e" />
- [Admin] Dynamic Content bg Components
  ![image](https://github.com/user-attachments/assets/909f994e-e925-4ffb-825f-35e83b5021d9)

   
- [Admin] Media Library
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/10a7a15f-93f8-439b-ab00-e5cd43243d4e" />

- [Admin] Career Manegement
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/8c8db295-78c5-400f-98fe-2c10e9911c4e" />

- [Admin] Career Taxonomy
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/dbad452d-0f75-4f52-b615-b8a45f8a2786" />

- [Admin] Management Booking
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/2db6a70d-b97c-4b53-8646-ecc444e70042" />

- [Admin] Detail Booking
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/101b261d-41be-4de4-bccd-226419703547">

- [Site] Homepage
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/5a27622e-a05f-4a6c-9d27-939e67999a6b">

- [Site] Booking
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/6c0563b5-ba8d-47e9-a6a6-9838e5e84b65">

- [Site] Detail Booking
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/71b4e202-37fd-4aae-a312-4473be455649" />
  
- [Site] Check Code Booking
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/58c376ec-ce2e-4c63-bf69-b9aa77ba28a0" />

- [Site] Career
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/bfc3709b-a35b-466c-a0fe-d7d2b1532719">
  
- [Site] Detail Career
  <img width="1680" alt="image" src="https://github.com/user-attachments/assets/31dfb38a-2407-4cba-a9fd-5562aa22be0f">



### Database 
you can download the database in the .sql file or in the `/backup` directory, [download](https://github.com/fajriyan/box-cms/tree/main/backup)
#### `node : please download the latest database by date`

<br>

## How to run project
a few things that need to be prepared:
- php 8.3
- database (mysql)
- composer v2.7^ or above
- node v20.15^ or above

## Access Login
- email : fajriyan@fajriyan.com
- password : fajriyan
- url : http://127.0.0.1:8000/admin/auth/login


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
