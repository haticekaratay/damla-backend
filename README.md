# DAMLA Budget 
 Welcome to DAMLA Budget a [REACT + REDUX App](https://github.com/haticekaratay/damla-frontend), with a Rails API. 
### Installation
 * Clone this repo

 * Install all the gems via 
   ``` 
    $bundle install
   ```
 * First, create the database via
    ```
    $rails db:create
   ```
 * Migrate database via
    ```
    $rails db:migrate
   ```
 * Use seed data to view all features of the app.
     ```
    $rails db:seed
    ```
 * Start your server
     ```
    $rails server
   ```
 * to view endpoints you need to to create a JWT key. Create .env file in your root directory. After that set your JWT key to any key/secret you like. 
  ```
    JWT_KEY=your_key_goes_here
  ```
 * use postman with an authorized token to view endpoints: 
  ```
    http://localhost:3001/incomes
    http://localhost:3001/expenses
  ```
 See [my post](https://haticekaraty.medium.com/damla-a-single-page-react-redux-app-83bf2be11d45) on how to use postman with an authorized token, if needed.

### Contributing
This project is intendent to be safe, welcoming space of collaboration, and contributors are expected to adhere to the Contributor Covenant [code of conduct](https://github.com/haticekaratay/damla-backend/blob/master/CODE_OF_CONDUCT.md)

### License 
This project has been licensed under the [MIT](https://github.com/haticekaratay/damla-backend/blob/master/LICENSE) open source license.

### Author(s)
* [Hatice Karatay](https://github.com/haticekaratay)