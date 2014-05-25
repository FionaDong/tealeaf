class Person
  def public_method
    "public"
  end

  protected
  def protected_method
    "protected"
  end

  private
  def private_method
    "private"
  end
end

class SalesPerson < Person
  def check_protected_method_explicit_receiver
    "#{self.protected_method} method OK with explicit receiver"
  rescue
    "failure accessing protected method with explicit receiver"
  end

  def check_protected_method_implicit_receiver
    "#{protected_method} method OK with implicit receiver"
  rescue
    "failure accessing protected method with implicit receiver"
  end

  def check_private_method_explicit_receiver
    "#{self.private_method} method OK with explicit receiver"
  rescue
    "failure accessing private method with explicit receiver"
  end

  def check_private_method_implicit_receiver
    "#{private_method} method OK with implicit receiver"
  rescue
    "failure accessing private method with implicit receiver"
  end
end

