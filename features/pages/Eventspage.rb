class EventsPage
    def initialize(page)
        @page = page
    end

    def existing_content(content)
        request = @page.has_content?(content)
        return request
    end

    def push_crear_evento()
        @page.find(:xpath, '/html/body/div[1]/div[2]/div[1]/div/div[1]/div[1]/div[3]/div[2]/button[1]').click
    end
end