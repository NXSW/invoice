module ApplicationHelper
  def select_month(form)
    months = []
    now = Time.current
    default_month = now.since(-1.months).strftime('%Y%m')
    for i in -5..5 do
      months << now.since(i.months).strftime('%Y%m')
    end
    form.select :name, months, :selected => default_month
  end

  def last_month_beginning_date(form)
    form.date_field "from", value: last_month.beginning_of_month.strftime('%Y-%m-%d')
  end

  def last_month_end_date(form)
    form.date_field "to", value: last_month.end_of_month.strftime('%Y-%m-%d')
  end

  private

  def last_month
    Time.now.prev_month
  end
end
