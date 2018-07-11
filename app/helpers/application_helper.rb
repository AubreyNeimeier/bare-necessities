module ApplicationHelper
    def starting_div_class
        date = Date.today - Date.today.day
    end

    def month_name
        Date::MONTHNAMES[Date.today.month]
    end


    def number_of_blank_days
        date = Date.today - Date.today.day
        date.cwday + 1 
    end

    def add_empty_divs
        empty_divs = []
        number_of_blank_days.times do 
            empty_divs << "<div></div>"
        end
        #binding.pry
        empty_divs.join
    end

    
    def days_in_month
        m = Date.today.month 
        y = Date.today.year
        days = Time.days_in_month(m, y)
    end
end
