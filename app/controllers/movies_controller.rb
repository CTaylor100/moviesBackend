class MoviesController < ApplicationController
    def index
        # render json: "hi"
        render json: Movie.all
    end

    def show
        puts params
        render json: Movie.find(params[:id])
    end

    def create
        movie = Movie.new(movie_params)

        if movie.save
            render(status: 201, json: { movie: movie})
        else
            render(status: 422, json: { movie: movie})
        end
    end

    def update
        movie = Movie.find(params[:id])
        movie.update(movie_params)
        render(json: { movie: movie})
    end

    def destroy
        movie = Movie.destroy(params[:id])
        render(status: 204)
    end

    private
    
    def movie_params
        params.required(:movie).permit(:title, :year, :poster_url)
    end
end