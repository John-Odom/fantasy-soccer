class TeamsController < ApplicationController
    def index
        teams = Team.all
        team_object = teams.map do |team|
            {id:team.id, name: team.name, players: team.players}
        end
        render json: team_object
    end
    def create
        team=Team.new(name: params["teamName"])
        goalkeeper=Player.find(params["players"][0])
        lb=Player.find(params["players"][1])
        lcb=Player.find(params["players"][2])
        rcb=Player.find(params["players"][3])
        rb=Player.find(params["players"][4])
        cdm=Player.find(params["players"][5])
        lam=Player.find(params["players"][6])
        ram=Player.find(params["players"][7])
        lw=Player.find(params["players"][8])
        st=Player.find(params["players"][9])
        rw=Player.find(params["players"][10])
        team.players << st
        team.players << lw
        team.players << rw
        team.players << lam
        team.players << ram
        team.players << cdm
        team.players << lb
        team.players << lcb
        team.players << rcb
        team.players << rb
        team.players << goalkeeper
        team.save
        render json: {name:team[:name], players:team.players}
    end

    def update
        team=Team.find(params["id"])
        goalkeeper=Player.find(params["players"][0])
        lb=Player.find(params["players"][1])
        lcb=Player.find(params["players"][2])
        rcb=Player.find(params["players"][3])
        rb=Player.find(params["players"][4])
        cdm=Player.find(params["players"][5])
        lam=Player.find(params["players"][6])
        ram=Player.find(params["players"][7])
        lw=Player.find(params["players"][8])
        st=Player.find(params["players"][9])
        rw=Player.find(params["players"][10])
        # team.name = params["teamName"]
        lineups = Lineup.where(team_id: team.id)
        lineups.each do |lineup|
            lineup.destroy
        end
        team.players << st
        team.players << lw
        team.players << rw
        team.players << lam
        team.players << ram
        team.players << cdm
        team.players << lb
        team.players << lcb
        team.players << rcb
        team.players << rb
        team.players << goalkeeper
        team.update(name: params["teamName"])
        render json: {name:team[:name], players:team.players}
    end

    def destroy
        team = Team.find(params[:id])
        team.destroy
        render json: {message: "Your team has been deleted!"}
    end
end
