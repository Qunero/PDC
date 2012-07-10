class PagesController < ApplicationController
  def Admin
    @title = "Admin"
  end

  def Contact
    @title = "Contact"
  end

  def Explore
    @title = "Explore"
    @chr = %w[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y]
    @identified_summary = IdentifiedSummaryByChr.all
  end

  def Home
    @title = "Home"
  end

  def Projects
    @title = "Projects"
    @projects = Project.all
  end

  def Result
    @title = "Result"
    if params[:commit]=='Search_Pro'
      @result_type = 'protein'
      @results = Protein.where(["pro_id = ?", params[:pro_id] ]).all
      @exp_results = IdentifiedProtein.where(["pro_id = ?", params[:pro_id] ]).all
    else
      @result_type = 'gene'
      @results = Protein.where(["gene = ?", params[:gene_id] ]).all
    end 
  end

  def Search
    @title = "Search"
  end

  def Upload
    @title = "Upload"
    path = params[:path]
    password = params[:password]
    if password == 'sure' && path[0] == '/'
      @status = 'Success'
      @info = 'Start handling the data for: ' + path
=begin
            require 'active_record'
            require '/var/lib/gems/1.9.1/gems/activerecord-import-0.2.9/lib/activerecord-import'
            proteins = []
            File.open(path){ |f|
                f.each_line do |l|
                    arr = l.chomp.split("\t")
                    proteins<< Protein.new(:pro_id => arr[0], :version => arr[1], :chr => arr[2], :gene => arr[3], :transcription => arr[4])
                end
            }

            File.open('dat','w'){ |f|
                $stdout = f
                p proteins
                $stdout = STDOUT
            }
            #Protein.import proteins
=end
    else
      @status = 'Failed'
      @info = 'Can\'t handle your data at the moment, contact the admin'
    end
  end

  def User
    @title = "User"
  end

end
