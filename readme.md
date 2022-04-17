# Itineris test task "Animal Management"

<p>
  <strong>Developed by Ilya Ozhibko <a href="mailto:lumenate@mail.ru"><strong>lumenate@mail.ru</strong></a></strong>
</p>

###Decisions made:
- I used sage to develop this theme because it made it easier to create this functionality instead of native wordpress plugin
- ACF is used for a course post type and for settings, please see <strong>/wp-content/themes/itineris-test/app/fields</strong> for corresponding entity
- I decided not to use Tailwind or Bootstrap for this task because i've encountered some problems making them work and spent a lot of time trying to connect those. I decided to go for plain css because this would be faster (I'll figure out why it's not working).
- To run the application, you have to install the database (included in the repository as <strong>db_dump.sql</strong>, administrator is User: <i>admin</i>, Password: <i>1</i>), and install the dependencies in theme folder:
```sh
cd wp-content/themes/itineris-test
composer install
yarn install
yarn build
```
- Terms in filters are not sorted out as in the design, but this could be achieved by e.g. additional ACF field.
- Hover over campus - i've done it using CSS, but this could be achieved using JS as well.
- There's not design for mobile, but added some styles, these are not perfect but still i thought it would be a good way to add those.
- Here's a screenshot of how the site looks like in case you won't run it:
- ![](screencapture-wp-local-8888-2022-04-15-13_18_46.png)