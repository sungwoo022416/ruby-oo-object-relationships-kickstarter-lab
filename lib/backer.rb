class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer_print = ProjectBacker.all.select {|backer| backer.backer == self}
        backer_print.map {|backer| backer.project}
    end
end