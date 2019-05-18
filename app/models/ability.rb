# frozen_string_literal: true

# Used to manage user authorization (ie what each user type can/cannot do).
class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Donation

    return unless user.present?

    # Additional permissions for logged in users
    can :create, Donation
    can :manage, Donation, user_id: user.id

    return unless user.admin?

    # Additional permissions for admins
    can :manage, :all
    can :access, :rails_admin   # grant access to rails_admin
    can :read, :dashboard       # grant access to the rails_admin dashboard

    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to everray resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
