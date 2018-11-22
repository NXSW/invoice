module ApplicationHelper
  def select_month(form)
    months = []
    now = Time.current
    default_month = now.since(-1.months).strftime('%Y/%m')
    for i in -5..5 do
      months << now.since(i.months).strftime('%Y/%m')
    end
    form.select :name, months, :selected => default_month
  end
end
