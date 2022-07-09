module ApplicationHelper
  def icons_for_skills(skill)
    case skill
    when "Carpenter"
      '<i class="fas fa-solid fa-star"></i>'.html_safe
    when "Plumber"
      '<i class="fas fa-solid fa-star"></i>'.html_safe
    when "Blacksmith"
      '<i class="fas fa-solid fa-star"></i>'.html_safe
    when "Electrician"
      '<i class="fas fa-solid fa-star"></i>'.html_safe
    end
  end

  def badges_for_skills(skill)
    case skill
    when "Carpenter"
      "badge p-2 bg-primary"
    when "Plumber"
      "badge p-2 bg-secondary"
    when "Blacksmith"
      "badge p-2 bg-warning"
    when "Electrician"
      "badge p-2 bg-success"
    end
  end
end
# %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter]
