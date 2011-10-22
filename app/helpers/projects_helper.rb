module ProjectsHelper
  def last_in_line(count)
    if count%4 == 0
      "last-in-line"
    end
  end
end
