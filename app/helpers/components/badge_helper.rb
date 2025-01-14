module Components::BadgeHelper
  def render_badge(label = "", data: "", text: "", variant: :default, **options)
    badge_classes = " inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2  "
    varianet_classes = case variant.to_sym
    when :default
      ComponentsHelper::PRIMARY_CLASSES
    when :secondary
      ComponentsHelper::SECONDARY_CLASSES
    when :error, :danger, :alert, :destructive
      ComponentsHelper::DESTRUCTIVE_CLASSES
    when :outline
      ComponentsHelper::OUTLINE_CLASSES
    when :ghost
      ComponentsHelper::GHOST_CLASSES
    end
    badge_classes << " #{varianet_classes}"
    text = label if label.present?
    render "components/ui/badge", text:, badge_classes:, data:, **options
  end
end
