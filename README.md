# Turbo Rails Tutorial Project

[![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-6.1.4-red.svg)](https://rubyonrails.org/)
[![Ruby](https://img.shields.io/badge/Ruby-3.0.2-blue.svg)](https://www.ruby-lang.org/en/)
[![Build Status](https://github.com/boutquin/quote-editor/actions/workflows/ci.yml/badge.svg)](https://github.com/boutquin/quote-editor/actions)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://opensource.org/licenses/MIT)

## Overview

This project is a Ruby on Rails application that follows the tutorial from [The Turbo Rails Tutorial](https://www.hotrails.dev). It demonstrates the use of Turbo and Stimulus to create a modern, reactive web application.

## Features

- User authentication with Devise
- Real-time updates with Turbo Streams
- Interactive UI with Stimulus
- CRUD operations for quotes
- Integration with modern web technologies

## Getting Started

### Prerequisites

- Ruby 3.3.0
- Rails 8.0.0.rc1

### Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/boutquin/quote-editor.git
    cd quote-editor
    ```

2. Install dependencies:

    ```sh
    bundle install
    yarn install
    ```

3. Set up the database:

    ```sh
    rails db:create
    rails db:migrate
    rails db:seed
    ```

4. Start the Rails server:

    ```sh
    rails server
    ```

5. Visit `http://localhost:3000` in your browser.

### Running Tests

To run the test suite, use the following command:

```sh
rails test
```

## Usage

### Authentication

This application uses Devise for user authentication. You can sign up, log in, and manage your account.

### Quotes Management

You can create, read, update, and delete quotes. The application uses Turbo Streams to provide real-time updates to the UI.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/boutquin/quote-editor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/boutquin/quote-editor/blob/main/CODE_OF_CONDUCT.md).

## License

The project is available as open source under the terms of the [MIT License](LICENSE).

## Author

Pierre G. Boutquin

- GitHub: [@boutquin](https://github.com/boutquin)

## Acknowledgments

This project follows the tutorial from [The Turbo Rails Tutorial](https://www.hotrails.dev). Special thanks to the authors and contributors of the tutorial for their excellent work.
