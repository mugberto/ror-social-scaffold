# Scaffold for social media app with Ruby on Rails

> This repo includes code for basic social media app built with rails. The app allows users to create account, see other users, invite them to friendship, and accept or reject thier friendship requests. A user also can create posts, publish them on their timeline, and see his friends' posts. 
Also in this project, you can find some API endpoints of the Blog app. This will allow your app to be used in different ways, rather than just through your site - for example, a mobile app or a CLI application.

## Live demo

View the demo [here](https://fierce-ocean-92729.herokuapp.com/)

## Built With

- Ruby v2.7.1
- Ruby on Rails v6.0.3



## Getting Started

To get a local copy up and running follow these simple example steps.

## How to use API endpoints

The API endpoints return and receive JSON. The user must first sign-in to get the authentication key 

## Use routes with Api endpoints

|     CRUD       | API endpoints     
| :------------- | :----------: 
|  POST          | /api/sign_in  
|  POST          | /api/sign_up
|  DELETE        | /api/sign_out
|  GET           | /api/posts/:post_id/comments
|  POST          | /api/posts/:post_id/comments
|  GET           | /api/posts
|  POST          | /api/posts


### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

> Tests will be added by Microverse students. There are no tests for initial features in order to make sure that students write all tests from scratch.

## Authors

👤 **Hubert MUGABO**

- Github: [@mugberto](https://github.com/mugberto)
- Twitter: [@mugberto](https://twitter.com/mugberto)
- Linkedin: [mugberto](https://www.linkedin.com/in/hubert-mugabo-23144b6a/)

👤 **Peter Mbuthia**

- GitHub: [@Blakbox23](https://github.com/blakbox23)
- Twitter: [@blakbox23](https://twitter.com/blakbox23)
- LinkedIn: [Peter Mbuthia](https://www.linkedin.com/in/peter-mbuthia)

👤 **Elyor Doniyorov**

- Github: [@elyor-doniyorov](https://github.com/elyor-doniyorov)
- LinkedIn: [@elyor-doniyorov](www.linkedin.com/in/elyor-doniyorov)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project inspired by Microverse Program

## 📝 License

This project is MIT Lisenced

