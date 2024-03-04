### Desafio para vaga de BackEnd - Foco em Ruby On Rails:

#### Entrega:

No README.md descreva as instruções sobre como executar o projeto, configurar variáveis de ambiente e executar os testes.
Ao finalizar, forneça um link para o repositório do GitHub contendo o código-fonte e a documentação, enviado para o email vagas{at}oxeanbits{dot}com

## How to Run This Project
This project has 3 diffent disctinct 3 parts:
  Before everything it is necessary to run the following commands:

  ```bash
        bundle install
        rails db:migrate
        rails db:seed
  ```

  1 - Docker
    This is the Redis component necessary to run Sideqik. To execute it you need the docker app in your local machine.
    If you already have Docker installed, you can just:
    
    ```bash
      docker-compose up -d
    ```
   2 - Sideqik
    This is the Redis component necessary to run the tasks in second plane. To execute it you need the Sideqik gem in your local machine.
    If you already have Sideqik installed, you can just:
      
    ```bash
        bundle exec sidekiq
    ```
  3 - Run the Ruby on Rails application
  
    ```bash
        rails server
    ```

## How to Batch Add New Movies
  I took a decision to add a button to the top of the page to add new movies using a .json file. You can either login and click on the "Batch Movies" on the top left of the page or access it directly using "http://localhost:3000/movies/movies-batch".
  I provided a example file in [this file](test.json). Just select it in the pop-up window and it will be loaded.
  The movied will be qeued up on sideqik and added to the list of movies.

## How to run the tests
To run the tests symply run:

```bash
  bundle exec rake test:prepare 
  bundle exec rake db:test:prepare
  bundle exec rake db:migrate
  bundle exec rspec
```




