class Project

    @@all = []

    def self.all
        @@all
    end

    attr_reader :title

    def initialize(title)
        @title = title
        self.class.all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projbackers = ProjectBacker.all.select{|projbacker| projbacker.project == self}
        projbackers.map{|projbacker| projbacker.backer}
    end

end