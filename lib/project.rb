class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_print = ProjectBacker.all.select {|backer| backer.project == self}
        project_print.map {|project| project.backer}
    end

end