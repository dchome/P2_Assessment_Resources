*Database*
1. Bundle.
2. Create the database (be rake db:create).
3. Generate the migrations for your tables.
4. Generate the models for your tables.
5. Add associations for the models.
  a. TEST the associations.
6. Add validations for the models.
  b. TEST the validations.

*Routes and Views*
1. Determine which functions you need for each model.
2. Build your routes and views, without content:
  a. Build a route.
  b. Make the file for the corresponding view.
    i. Confirm the route properly shows that view.
  c. Add the form or link to the next route.
    i. Confirm the form or link is caught by the right route.
  d. Repeat.
3. Add user authentication protections.
  a. Add sessions controller and login/register page.
    i. Add Bcrypt to User model.
  b. Add sessions helper.
  c. Add guard clauses.
    i. User show page?
    ii. Edit pages.
    iii. Any page that calls for a user id or session[user_id].
4. Add other content to view pages.

*Other Functionality*
1. Add other functionality required by assignment.
2. Clean up code.
  a. Break html into partials as applicable (potentially put new/edit forms in partial to start).
  b. Remove logic from views.
  c. Add methods to models to enhance readability.
