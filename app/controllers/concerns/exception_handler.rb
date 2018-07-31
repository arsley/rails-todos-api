module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ message: e.message }, :unprocessable_entity)
    end
  end
end

# In our create method in the TodosController, note that we're using create! instead of create.
# This way, the model will raise an exception ActiveRecord::RecordInvalid.
# This way, we can avoid deep nested if statements in the controller.
# Thus, we rescue from this exception in the ExceptionHandler module.

# この実装すごく良い
