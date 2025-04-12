# MySQL User Roles and Security Overview

## User Roles:

- **admin_user**: Full access to all data.
- **staff_user**: Can read, insert, and update data.
- **guest_user**: Can only read (SELECT).

## Security Best Practices:

- All users have strong passwords (use mix of upper/lowercase, symbols, numbers).
- Users only have the permissions they need.
- All changes require `FLUSH PRIVILEGES` to apply.