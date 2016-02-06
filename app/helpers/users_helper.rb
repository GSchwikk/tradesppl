module UsersHelper
    
    def skill_icon1
        if @skill1.name == "Plumber"
            "<i class='fa fa-wrench'></i>".html_safe
        elsif  @skill1.name == "Electrician"
            "<i class='fa fa-bolt'></i>".html_safe
        elsif  @skill1.name == "Painter"
            "<i class='fa fa-paint-brush'></i>".html_safe
        elsif  @skill1.name == "Masoner"
            "<i class='fa fa-th'></i>".html_safe
        elsif  @skill1.name == "Carpenter"
            "<i class='fa fa-tree'></i>".html_safe
       end
    end

    def skill_icon2
        if @skill2.name == "Plumber"
            "<i class='fa fa-wrench'></i>".html_safe
        elsif  @skill2.name == "Electrician"
            "<i class='fa fa-bolt'></i>".html_safe
        elsif  @skill2.name == "Painter"
            "<i class='fa fa-paint-brush'></i>".html_safe
        elsif  @skill2.name == "Masoner"
            "<i class='fa fa-th'></i>".html_safe
        elsif  @skill2.name == "Carpenter"
            "<i class='fa fa-tree'></i>".html_safe
       end
    end

    def skill_icon3
        if @skill3.name == "Plumber"
            "<i class='fa fa-wrench'></i>".html_safe
        elsif  @skill3.name == "Electrician"
            "<i class='fa fa-bolt'></i>".html_safe
        elsif  @skill3.name == "Painter"
            "<i class='fa fa-paint-brush'></i>".html_safe
        elsif  @skill3.name == "Masoner"
            "<i class='fa fa-th'></i>".html_safe
        elsif  @skill3.name == "Carpenter"
            "<i class='fa fa-tree'></i>".html_safe
       end
    end
end