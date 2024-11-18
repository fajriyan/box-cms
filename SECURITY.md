# Security Policy

## Supported Versions

The following versions of this project are actively supported:

| Project Version | Status       |
|------------------|--------------|
| Laravel 11       | Supported    |
| PHP 8.3          | Supported    |
| Node.js 20       | Supported    |
| TailwindCSS      | Supported    |
| Livewire         | Supported    |
| Statamic 5       | Supported    |
| MySQL 8          | Supported    |

We strongly recommend always using the latest versions of dependencies to ensure security.

## Reporting a Vulnerability

If you discover a security vulnerability in this project, please follow these steps to report it:

1. **Do not create a public issue:** To prevent exploitation, security vulnerabilities should be reported privately.
2. Send an email to: **fajriyan20@gmail.com** with the following details:
   - Description of the vulnerability.
   - Steps to reproduce the issue.
   - Potential impact.
   - Suggested fix or workaround (if available).
3. We will acknowledge your report within **48 hours**.
4. After review, we aim to resolve the issue within **7 business days**, if feasible.

## Security Practices

We are committed to maintaining the security of this project by:

- Regularly updating dependencies.
- Applying best security practices, including:
  - **Laravel**: Using `APP_ENV=production` and enabling security headers via `Secure Headers`.
  - **PHP**: Disabling risky functions like `exec()` and `shell_exec()` in production environments.
  - **MySQL**: Using database users with minimal privileges.
  - **Node.js**: Using trusted dependencies and scanning vulnerabilities with `npm audit`.
- Testing the application for common vulnerabilities such as:
  - SQL Injection
  - Cross-Site Scripting (XSS)
  - Cross-Site Request Forgery (CSRF)
  - Remote Code Execution (RCE)

## Additional References

- Laravel Security Documentation: [https://laravel.com/docs/11.x/security](https://laravel.com/docs/11.x/security)  
- PHP Security Best Practices: [https://www.php.net/manual/en/security.php](https://www.php.net/manual/en/security.php)  
- Node.js Security Guides: [https://nodejs.org/en/docs/guides/security](https://nodejs.org/en/docs/guides/security)  
- Statamic Security Overview: [https://statamic.dev/security](https://statamic.dev/security)

Thank you for helping to keep this project secure.
