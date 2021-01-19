class Backer

    @@all = []

    def self.all 
        @@all
    end

    attr_reader :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projbackers = ProjectBacker.all.select{|projbacker| projbacker.backer == self}
        projbackers.map{|projbacker| projbacker.project}
    end
end