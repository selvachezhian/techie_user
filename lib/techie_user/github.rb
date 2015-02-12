module TechieUser

  module Github

    def get_github_repositories(options)
      RestClient.get 'https://api.github.com/users/selvachezhian/repos'
      # 'curl https://api.github.com/users/selvachezhian/repos'
    end

  end

end