ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      panel "Info" do
        para "Welcome to ActiveAdmin."
      end
      column do
        panel "Recent Users" do
          ul do
            User.last(10).reverse.map do |user|
              li link_to(user.username, admin_user_path(user))
            end
          end
        end
        panel "Recent Seeds" do
          ul do
            Seed.last(10).reverse.map do |seed|
              li link_to(seed.title, admin_seed_path(seed))
            end
          end
        end
      end
    end
  end # content
end
