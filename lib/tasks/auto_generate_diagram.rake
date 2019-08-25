# NOTE: only doing this in development as some production environments (Heroku)
# NOTE: are sensitive to local FS writes, and besides -- it's just not proper
# NOTE: to have a dev-mode tool do its thing in production.

# TODO: need to add rails-erd gem to do this.
# RailsERD.load_tasks if Rails.env.development?
