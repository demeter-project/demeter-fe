class WelcomeController < ApplicationController
  def index
    @contributors = [
      {
        name: "Thomas Musselman",
        gh_link: "https://github.com/musselmanth"
      },
      {
        name: "Riley McCullough",
        gh_link: "https://github.com/Rileybmcc"
      },
      {
        name: "Sid Mann",
        gh_link: "https://github.com/sjmann2"
      },
      {
        name: "A.J. Krumholz",
        gh_link: "https://github.com/ajkrumholz"
      },
      {
        name: "Ken Lenhart",
        gh_link: "https://github.com/penitent0"
      }
    ]
  end
end
