macro recursive_method(recursive_method_name, regular_content, recursive_content)
  def {{recursive_method_name}}
    {{recursive_content}}

    {{regular_content}}
  end
end

macro obelisk_method(obelisk_method_name, obelisk_output, obelisk_content)
  def {{obelisk_method_name}}
    {{obelisk_content}}

    {{obelisk_output}}
  end
end

# This DSL assumes you specify an object, then select a character to act upon it.

#############################################################################################################
#                                               Obelisk DSL                                                 #
#############################################################################################################
###########################################################################################
#                         Data Recycling And Memory Management                            #
###########################################################################################
# Focus on preserving knowledge through burial urns inside of obelisks. This started out  #
# as an esolang, and gradually became more useful for real world problems, such as the    #
# issue of catestrophic forgetting in AI models.                                          #
###########################################################################################
module Obelisk
  class DataRecycling
    macro obelisk_method(obelisk_method_name, obelisk_output, obelisk_content)
      def {{obelisk_method_name}}
        {{obelisk_content}}

        {{obelisk_output}}
      end
    end

    #################################################################################################################
    #                                                Memoricimetiere                                                #
    #################################################################################################################
    def self.obelisk(old_data)
      old_graveyard = File.read_lines("mce/urn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("mce/urn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_shell(old_data)
      old_graveyard = File.read_lines("mce/surn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("mce/surn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_repl(old_data)
      old_graveyard = File.read_lines("mce/aurn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("mce/aurn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.three_plot_burial(father, mother, child)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_children = File.read_lines("mce/family/child.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/child.txt", "w") { |f|
        f.puts child
        f.puts buried_children
      }
    end

    def self.four_plot_burial(father, mother, brother, sister)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      buried_sisters  = File.read_lines("mce/family/sister.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/brother.txt", "w") { |f|
        f.puts brother
        f.puts buried_brothers
      }

      File.open("mce/family/sister.txt", "w") { |f|
        f.puts sister
        f.puts buried_sisters
      }
    end

    def self.scatter_ashes
      old_graveyard = File.read_lines("mce/urn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_graveyard[index]
  
        index = index + 1
      end
    end

    def self.scatter_shells
      old_graveyard = File.read_lines("mce/surn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        system("#{old_graveyard[index]}")
  
        index = index + 1
      end
    end

def self.scatter_awasunu
  old_graveyard = File.read_lines("mce/aurn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    current_line = old_graveyard[index]
  
    tokens       = current_line.split(" ")
    total_tokens = tokens.size.to_i
    token_index  = 0
    
    ## The actual tokens you'll be parsing.
    parsed_tokens = [] of String

    if total_lines > 0
      total_lines.times do

        current_line = read_file[index]
  
        tokens       = current_line.split(" ")
        total_tokens = tokens.size.to_i
        token_index  = 0
    
        ## The actual tokens you'll be parsing.
        parsed_tokens = [] of String
    
        if total_tokens > 0

          total_tokens.times do
            current_token = tokens[token_index]
 
            parsed_tokens = parsed_tokens.push(current_token)
    
            token_index = token_index + 1
          end
        
          ###################################################################################################
          #                                         Document Parsing                                        #
          ###################################################################################################
          if    parsed_tokens[0] == "#"
          elsif parsed_tokens[0] == "--"
          elsif parsed_tokens[0] == ";"
          elsif parsed_tokens[0] == ""

          elsif  parsed_tokens[0] == "encrire"
            new_index  = 0
            size_limit = parsed_tokens.size.to_i
    
            size_limit.times do
              new_output = parsed_tokens[new_index].tr "'", ""
              
              if new_output == "encrire"
              else
                print "#{new_output} "
              end
            
              new_index = new_index + 1
            end
          elsif parsed_tokens[0] == "encrireln"
            new_index  = 0
            size_limit = parsed_tokens.size.to_i
          
            size_limit.times do
              new_output = parsed_tokens[new_index].tr "'", ""
            
              if new_output == "encrireln"
              else
                print "#{new_output} "
              end
            
              new_index = new_index + 1
            end

            puts ""
          elsif parsed_tokens[0] == "expression"
            expression(osv(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3]),
            sov(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6]))
          elsif parsed_tokens[0] == "parle_grammaire"
            puts parle_grammaire(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
          elsif parsed_tokens[0] == "nihongotupelo"
            puts puts nihongotupelo(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
          elsif parsed_tokens[0] == "ne_mais"
            print ne(parsed_tokens[1], parsed_tokens[2]); puts mais(parsed_tokens[3])
          elsif parsed_tokens[0] == "cemase"
            puts cette(parsed_tokens[0],    parsed_tokens[1])
            puts maisette(parsed_tokens[2], parsed_tokens[3])
            puts sinon(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6], parsed_tokens[7])
          elsif parsed_tokens[0] == "bghost"
            puts basement_ghost(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
          elsif parsed_tokens[0] == "bcmaker"
            puts bedroom_coffee_maker(parsed_tokens[1], parsed_tokens[2])
          elsif parsed_tokens[0] == "vexpress"
            vexpress(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4],
                     parsed_tokens[5], parsed_tokens[6], parsed_tokens[7])
          elsif parsed_tokens[0] == "fort" # Negative indexing
            label       = fortune(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
            description = fortune(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6])

            low    = parsed_tokens[7].to_f
            medium = parsed_tokens[8].to_f
            high   = parsed_tokens[9].to_f

            initial_estimate = fortune(low, medium, high)
            second_estimate  = fortune(low, medium, high)

            puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])
          elsif parsed_tokens[0] == "hfort"
            label       = hfortune(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
            description = hfortune(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6])

            low    = parsed_tokens[7].to_f
            medium = parsed_tokens[8].to_f
            high   = parsed_tokens[9].to_f

            initial_estimate = hfortune(low, medium, high)
            second_estimate  = hfortune(low, medium, high)

            puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])
          elsif parsed_tokens[0] == "tfort"
            search_space = parsed_tokens[1].to_i

            search_space.times do
              a = label_one = tfortune( parsed_tokens[2],  parsed_tokens[3],  parsed_tokens[4],
                                        parsed_tokens[5],  parsed_tokens[6],  parsed_tokens[7],
                                        parsed_tokens[8],  parsed_tokens[9], parsed_tokens[10],
                                        parsed_tokens[11], parsed_tokens[12], parsed_tokens[13],
                                        parsed_tokens[14], parsed_tokens[15], parsed_tokens[16],
                                        parsed_tokens[17], parsed_tokens[18], parsed_tokens[19],
                                        parsed_tokens[20], parsed_tokens[21], parsed_tokens[22],
                                        parsed_tokens[23], parsed_tokens[24], parsed_tokens[25],
                                        parsed_tokens[26], parsed_tokens[27], parsed_tokens[28])

              b = probabilities = tfortune(0.005,       0.014296875, 0.023593750,
                                           0.042187500, 0.051484375, 0.060781250,
                                           0.070078125, 0.072402344, 0.074726563,
                                           0.0793750,   0.119062500, 0.138906250,
                                           0.15375,     0.228125000, 0.265312500,
                                           0.3025,      0.339687500, 0.376875000,
                                           0.45125,     0.488125000, 0.525000000,
                                           0.60,        0.795000000, 0.892500000,
                                           0.94125,     0.965625000, 0.990000000)

              t_list = [a, b]

              print "[#{t_list[0]}, #{t_list[1]}]\n"
            end
          elsif parsed_tokens[0] == "pnemais"
            2.times do
              get_statistics(parsed_tokens[1], "#{ne(parsed_tokens[2], parsed_tokens[3])} #{mais(parsed_tokens[4])}",
                             parsed_tokens[5], "#{ne(parsed_tokens[6], parsed_tokens[7])} #{mais(parsed_tokens[8])}",
                             parsed_tokens[9], "#{ne(parsed_tokens[10], parsed_tokens[11])} #{mais(parsed_tokens[12])}")
                 
              dynamic_mode_switcher

              current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
              current_information = File.read("data/statistics/label/current_information.txt")

              if current_probability > 0.999999999999999999
                current_probability = 0.9 / current_probability
              end

              puts "[ #{current_information}, #{current_probability} ] ".tr "'", ""
            end
          elsif parsed_tokens[0] == "hlim"
            search_space      = parsed_tokens[1].to_i

            search_space.times do
              hyper_statistics(parsed_tokens[2], "#{parsed_tokens[3]}",
                               parsed_tokens[4], "#{parsed_tokens[5]}",
                               parsed_tokens[6], "#{parsed_tokens[7]}")
                   
              dynamic_mode_switcher

              current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
              current_information = File.read("data/statistics/label/current_information.txt")

              if current_probability > 0.999999999999999999
                current_probability = 0.9 / current_probability
              end

              puts "[ #{current_information} ] ".tr "'", ""
              system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
            end
          elsif parsed_tokens[0] == "bifurcate"
            search_space      = parsed_tokens[1].to_i

            a = 10

            search_space.times do
              bifurcate_statistics(parsed_tokens[2], "#{parsed_tokens[3]}", "#{parsed_tokens[4]}",
                                   parsed_tokens[5], "#{parsed_tokens[6]}", "#{parsed_tokens[7]}",
                                   parsed_tokens[8], "#{parsed_tokens[9]}", "#{parsed_tokens[a]}")

              dynamic_mode_switcher

              current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
              current_information = File.read("data/statistics/label/current_information.txt")

              if current_probability > 0.999999999999999999
                current_probability = 0.9 / current_probability
              end

              puts "[ #{current_information} ] ".tr "'", ""
              system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
            end
          elsif parsed_tokens[0] == "lintree"
            ## General Family Dynasty Information
            nation_state       = parsed_tokens[0]
            family_lineage     = parsed_tokens[1]
            family_description = parsed_tokens[2]
            years_historical   = parsed_tokens[3]
            years_current      = parsed_tokens[4]

            ## Founding Generation
            p_name = parsed_tokens[5]
            m_name = parsed_tokens[6]

            ## First Generation Hemato
            g1_name1 = parsed_tokens[7]
            g1_name2 = parsed_tokens[8]
            g1_name3 = parsed_tokens[9]

            ## Second Generation Hemato
            g2_name1 = parsed_tokens[10]
            g2_name2 = parsed_tokens[11]
            g2_name3 = parsed_tokens[12]
            g2_name4 = parsed_tokens[13]
            g2_name5 = parsed_tokens[14]

            ## Third Generation Hemato
            g3_name1 = parsed_tokens[15]
            g3_name2 = parsed_tokens[16]
            g3_name3 = parsed_tokens[17]
            g3_name4 = parsed_tokens[18]
            g3_name5 = parsed_tokens[19]

            ## Remaining Survivor Ehena Descendant
            e_name1 = parsed_tokens[20]
            e_name2 = parsed_tokens[21]

            BequestLineage::FamilyTree.choose_name(nation_state,     family_lineage, family_description,
	                                           years_historical,  years_current,             p_name,
	                                           m_name,                 g1_name1,           g1_name2,
	                                           g1_name3,               g2_name1,           g2_name2,
	                                           g2_name3,               g2_name4,           g2_name5,
	                                           g3_name1,               g3_name2,           g3_name3,
	                                           g3_name4,               g3_name5,            e_name1,
	                                                                                          e_name2)
	  elsif parsed_tokens[0] == "slim"
            scash_liminal(parsed_tokens[1].to_s, parsed_tokens[2].to_s,
		          parsed_tokens[3].to_s, parsed_tokens[4].to_s,
			  parsed_tokens[5].to_s, parsed_tokens[6].to_s,
					         parsed_tokens[7].to_i)

          elsif parsed_tokens[0] == "dmem"
            search_space = parsed_tokens[1].to_i

            puts "[ Nom, Buttai, Temps ]"
            search_space.times do
              hyper_statistics(parsed_tokens[2], nom(parsed_tokens[3]),
                               parsed_tokens[4], buttai(parsed_tokens[5]),
                               parsed_tokens[6], temps(parsed_tokens[7]))

              dynamic_mode_switcher

              current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
              current_information = File.read("data/statistics/label/current_information.txt")

              if current_probability > 0.999999999999999999
                current_probability = 0.9 / current_probability
              end

              puts "[ #{current_information} ] ".tr "'", ""
              system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
            end

            puts "[ Fukin, Motif, Hono ]"
            search_space.times do
              hyper_statistics(parsed_tokens[2], fukin(parsed_tokens[3]),
                               parsed_tokens[4], motif(parsed_tokens[5]),
                               parsed_tokens[6], hono(parsed_tokens[7]))

              dynamic_mode_switcher

              current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
              current_information = File.read("data/statistics/label/current_information.txt")

              if current_probability > 0.999999999999999999
                current_probability = 0.9 / current_probability
              end

              puts "[ #{current_information} ] ".tr "'", ""
              system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
            end

	  ########################################################################################################
          #                                              Recursive                                               #
          ########################################################################################################
          # Recursive functionality that allows for writing Awa files back to Awa as output.                     #
	  ########################################################################################################
          elsif parsed_tokens[0] == "mperiod"					
            puts "COLD MAP"
            puts mperiod_sprox(proximity_de_medusahoseki(parsed_tokens[1].to_f, parsed_tokens[2].to_i), proximity_de_memorie(parsed_tokens[3].to_f))

            puts "HEAT MAP"
            puts mperiod_sprox(proximity_de_nemedusahoseki(parsed_tokens[4].to_f, parsed_tokens[5].to_i), proximity_de_memorie(parsed_tokens[6].to_f))
	  elsif parsed_tokens[0] == "espace"
            puts " "
          elsif parsed_tokens[0] == "lstate"
            lisp_statements(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
          elsif parsed_tokens[0] == "nlisp"
            ne_lisp(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])
          elsif parsed_tokens[0] == "mlisp"
            mais_lisp(parsed_tokens[0], parsed_tokens[1])

          ########################################################################################################
          #                                      Self Parsing Awasunu Code                                       #
          ########################################################################################################
          # This section of the interpreter specializes in generating Awasunu code itself, for Awasunu to parse. #
          # It does not necessarily replace learning LLVM in order to develop a hosting version of Awasunu in    #
          # LLVM in parallel with the Crystal hosted version. The aim of the language isn't total independance   #
          # but some self-interpreting and compiling abilities.                                                  #
          ########################################################################################################
          elsif parsed_tokens[0] == "samu"
            sob = Samu::Cemotu::Objet
            ssu = Samu::Cemotu::Sujet
            snu = Samu::Numotu::Phrase


            a = Samu::LType::List.assert(sob.fruit(parsed_tokens[1]), snu.express(sob.fruit(parsed_tokens[2]),  ssu.moi(parsed_tokens[3]),  parsed_tokens[4]))
            b = Samu::LType::List.assert(sob.fruit(parsed_tokens[5]), snu.express(sob.fruit(parsed_tokens[6]),  ssu.moi(parsed_tokens[7]),  parsed_tokens[8]))
            c = Samu::LType::List.assert(sob.fruit(parsed_tokens[9]), snu.express(sob.fruit(parsed_tokens[10]), ssu.moi(parsed_tokens[11]), parsed_tokens[12]))

            print "hlim 2"

            print a
            print b
            print c

            File.open("samu.awa", "w") { |f|
              f.puts "hlim 2#{a}#{b}#{c}"
            }
          elsif parsed_tokens[0] == "hikasu"
            hob = Hikasu::Cemotu::Objet
            hsu = Hikasu::Cemotu::Sujet
            hnu = Hikasu::Numotu::Phrase


            a = Samu::LType::List.assert(hob.fruit(parsed_tokens[1]), hnu.express(hob.fruit(parsed_tokens[2]),  hsu.moi(parsed_tokens[3]),  parsed_tokens[4]))
            b = Samu::LType::List.assert(hob.fruit(parsed_tokens[5]), hnu.express(hob.fruit(parsed_tokens[6]),  hsu.moi(parsed_tokens[7]),  parsed_tokens[8]))
            c = Samu::LType::List.assert(hob.fruit(parsed_tokens[9]), hnu.express(hob.fruit(parsed_tokens[10]), hsu.moi(parsed_tokens[11]), parsed_tokens[12]))

            print "hlim 2"

            print a
            print b
            print c

            File.open("hikasu.awa", "w") { |f|
              f.puts "hlim 2#{a}#{b}#{c}"
            }
          elsif parsed_tokens[0] == "sanu"
            sanob = Sanu::Cemotu::Objet
            sansu = Sanu::Cemotu::Sujet
            sannu = Sanu::Numotu::Phrase


            a = Samu::LType::List.assert(sanob.fruit(parsed_tokens[1]), sannu.express(sanob.fruit(parsed_tokens[2]),  sansu.moi(parsed_tokens[3]),  parsed_tokens[4]))
            b = Samu::LType::List.assert(sanob.fruit(parsed_tokens[5]), sannu.express(sanob.fruit(parsed_tokens[6]),  sansu.moi(parsed_tokens[7]),  parsed_tokens[8]))
            c = Samu::LType::List.assert(sanob.fruit(parsed_tokens[9]), sannu.express(sanob.fruit(parsed_tokens[10]), sansu.moi(parsed_tokens[11]), parsed_tokens[12]))

            print "hlim 2"

            print a
            print b
            print c

            File.open("sanu.awa", "w") { |f|
              f.puts "hlim 2#{a}#{b}#{c}"
            }
          elsif parsed_tokens[0] == "chanu"
            chanob = Chanu::Cemotu::Objet
            chansu = Chanu::Cemotu::Sujet
            channu = Chanu::Numotu::Phrase


            # chanu :le_pomme pomme je mangeon :le_banane banane je mangeon :le_citrone citrone je mangeon

            a = Chanu::LType::List.assert(chanob.fruit(parsed_tokens[1]), channu.express(chanob.fruit(parsed_tokens[2]),  chansu.moi(parsed_tokens[3]),  parsed_tokens[4]))
            b = Chanu::LType::List.assert(chanob.fruit(parsed_tokens[5]), channu.express(chanob.fruit(parsed_tokens[6]),  chansu.moi(parsed_tokens[7]),  parsed_tokens[8]))
            c = Chanu::LType::List.assert(chanob.fruit(parsed_tokens[9]), channu.express(chanob.fruit(parsed_tokens[10]), chansu.moi(parsed_tokens[11]), parsed_tokens[12]))

            print "hlim 2"

            print a
            print b
            print c

            File.open("chanu.awa", "w") { |f|
              f.puts "hlim 2 #{a[0]} #{a[1]} #{b[0]} #{b[1]} #{c[0]} #{c[1]}"
            }

          else
            index = index + 1

          end
        end
      end
    end
  end
end

    def self.scatter_three_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_children = File.read_lines("mce/family/child.txt").uniq.sort.shuffle

      size_limit    = old_fathers.size.to_i
      index         = 0
  
      ## Scatters fathers ashes in the wind.
      size_limit.times do
        puts old_fathers[index]
  
        index = index + 1
      end
  
      ## Scatters mothers ashes in the wind
      size_limit    = old_mothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_mothers[index]
  
        index = index + 1
      end

      ## Scatters childrens ashes in the wind.
      size_limit    = old_children.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_children[index]
  
        index = index + 1
      end
    end

    def self.scatter_four_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      old_sister   = File.read_lines("mce/family/sister.txt").uniq.sort

      size_limit    = old_fathers.size.to_i
      index         = 0
  
      ## Scatters fathers ashes in the wind.
      size_limit.times do
        puts old_fathers[index]
  
        index = index + 1
      end
  
      ## Scatters mothers ashes in the wind
      size_limit    = old_mothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_mothers[index]
  
        index = index + 1
      end

      ## Scatters brothers ashes in the wind.
      size_limit    = old_brothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_brothers[index]
  
        index = index + 1
      end

      ## Scatters sisters ashes in the wind.
      size_limit    = old_sister.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_sister[index]
  
        index = index + 1
      end
    end

    def self.yonagumi(current_year, specific_event)
      age_of_yonagumi = 11000.0
  
      age_percent = age_of_yonagumi - current_year
  
      " For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}."

      Obelisk::DataRecycling.obelisk("For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}.")
      Obelisk::DataRecycling.scatter_ashes
    end

    def self.age_comparison(current_year, age_historical, specific_event)
      years_ago = current_year - age_historical
  
      print "The current year is #{current_year}, #{specific_event} is #{years_ago} years ago."
      puts Obelisk::DataRecycling.yonagumi(2026.0, "#{specific_event}")
      
      Obelisk::DataRecycling.obelisk("The current year is #{current_year}, #{specific_event} is #{years_ago} years ago.")
    end
  end
end

#############################################################################################################
#                                  Masculine Honorific Organized Directives                                 #
#############################################################################################################

module Samu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sanu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chanu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(directive)
        "#{directive}_moi"
      end

      def self.toi(directive)
        "#{directive}_toi"
      end

      def self.ils(directive)
        "#{directive}_ils"
      end

      def self.elles(directive)
        "#{directive}_elles"
      end

      def self.noi(directive)
        "#{directive}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#############################################################################################################
#                                      Feminine Honorific Organized Directives                              #
#############################################################################################################
module Sama
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasa
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sana
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chana
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#############################################################################################################
#                                      Machine Honorific Organized Directives                               #
#############################################################################################################
module Samos
  module Cemotos
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasos
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sanos
  module Cemotos
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chanos
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#############################################################################################################
#                                              Bequest Lineage                                              #
#############################################################################################################
module BequestLineage
  class FamilyTree  
    def self.hemato_tomato(*args)
      g1_name1, g1_name2, g1_name3,
      g2_name1, g2_name2, g2_name3, g2_name4, g2_name5,
      g3_name1, g3_name2, g3_name3, g3_name4, g3_name5 = args
	  
      # Confirmed second generational branch.
      second_generation = [[
        [[g1_name1, g1_name1],
         [g1_name1, g1_name2],
         [g1_name1, g1_name3]],
    
        [[g1_name2, g1_name1],
         [g1_name2, g1_name2],
         [g1_name2, g1_name3]],
    
        [[g1_name3, g1_name1],
         [g1_name3, g1_name2],
         [g1_name3, g1_name3]],
      ], [
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
      ]]

      ## Confirmed Third generational branches.
      third_generation_first_branch = [[
        [[g2_name1, g2_name1],
         [g2_name1, g2_name2],
         [g2_name1, g2_name3],
         [g2_name1, g2_name4],
         [g2_name1, g2_name5]],

        [[g2_name2, g2_name1],
         [g2_name2, g2_name2],
         [g2_name2, g2_name3],
         [g2_name2, g2_name4],
         [g2_name2, g2_name5]],
  
        [[g2_name3, g2_name1],
         [g2_name3, g2_name2],
         [g2_name3, g2_name3],
         [g2_name3, g2_name4],
         [g2_name3, g2_name5]],
         
        [[g2_name4, g2_name1],
         [g2_name4, g2_name2],
         [g2_name4, g2_name3],
         [g2_name4, g2_name4],
         [g2_name4, g2_name5]],
         
        [[g2_name5, g2_name1],
         [g2_name5, g2_name2],
         [g2_name5, g2_name3],
         [g2_name5, g2_name4],
         [g2_name5, g2_name5]],
      ], [
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
      ]]

      third_generation_second_branch = [[
        [[g3_name1, g3_name1],
         [g3_name1, g3_name2],
         [g3_name1, g3_name3],
         [g3_name1, g3_name4],
         [g3_name1, g3_name5]],
         
        [[g3_name2, g3_name1],
         [g3_name2, g3_name2],
         [g3_name2, g3_name3],
         [g3_name2, g3_name4],
         [g3_name2, g3_name5]],
  
        [[g3_name3, g3_name1],
         [g3_name3, g3_name2],
         [g3_name3, g3_name3],
         [g3_name3, g3_name4],
         [g3_name3, g3_name5]],
         
        [[g3_name4, g3_name1],
         [g3_name4, g3_name2],
         [g3_name4, g3_name3],
         [g3_name4, g3_name4],
         [g3_name4, g3_name5]],
         
        [[g3_name5, g3_name1],
         [g3_name5, g3_name2],
         [g3_name5, g3_name3],
         [g3_name5, g3_name4],
         [g3_name5, g3_name5]],
      ], [
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
      ]]

      ## Second Generational Data
      second_gen_names         = second_generation[0]
      second_gen_probabilities = second_generation[1]

      ## Third Generational Data
      third_gen_names_fb         = third_generation_first_branch[0]
      third_gen_probabilities_fb = third_generation_first_branch[1]

      third_gen_names_sb         = third_generation_second_branch[0]
      third_gen_probabilities_sb = third_generation_second_branch[1]

      what_generation = [0, 1]

      choose_generation = what_generation.sample

      # Chooses a name based on a random lineage from Hemato-Tomato.
      if    0 == choose_generation
        ### Character Selection
        row_options = [0, 1, 2, 3, 4]
        col_options = [0, 1, 2, 3, 4]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        player_name = second_gen_names[cur_row][cur_col][cur_arr]
 
  	print "You start your journey as: #{player_name}. "
		
	File.open("data/player/current_player_names.txt", "w") { |f|
          f.puts player_name
        }
      elsif 1 == choose_generation
        what_branch = [0, 1]

        chosen_branch = what_branch.sample

        if    chosen_branch == 0
          ### Character Selection
          row_options = [0, 1, 2, 3, 4]
          col_options = [0, 1, 2, 3, 4]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample
      
          player_name = third_gen_names_fb[cur_row][cur_col][cur_arr]

  	  print "You start your journey as: #{player_name}. "
		
	  File.open("data/player/current_player_names.txt", "w") { |f|
	    f.puts player_name
	  }
	elsif chosen_branch == 1
          ### Character Selection
          row_options = [0, 1, 2, 3, 4]
          col_options = [0, 1, 2, 3, 4]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample
      
          player_name = third_gen_names_sb[cur_row][cur_col][cur_arr]

	  print "You start your journey as: #{player_name}. "

  	  File.open("data/player/current_player_names.txt", "w") { |f|
	    f.puts player_name
	  }
	else
          ### Character Selection
          row_options = [0, 1, 2, 3, 4]
          col_options = [0, 1, 2, 3, 4]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          player_name = third_gen_names_fb[cur_row][cur_col][cur_arr]

  	  print "You start your journey as: #{player_name}. "
		
	  File.open("data/player/current_player_names.txt", "w") { |f|
            f.puts player_name
          }
        end
      else
        ### Character Selection
        row_options = [0, 1, 2, 3, 4]
        col_options = [0, 1, 2, 3, 4]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        player_name = second_gen_names[cur_row][cur_col][cur_arr]

 	print "You start your journey as: #{player_name}. "
		
        File.open("data/player/current_player_names.txt", "w") { |f|
	  f.puts player_name
	}
      end
    end

    def self.ehena_marie(e_name1, e_name2)
      ## Theoretical third generational branch.
      third_generation_theoretical = [[
        [[e_name1, e_name1],
         [e_name1, e_name2]],
    
        [[e_name2, e_name1],
         [e_name2, e_name2]],
      ], [
        [[0.5, 0.5], [0.5, 0.5]],
        [[0.5, 0.5], [0.5, 0.5]],
      ]]

      ## Third Generational Data
      third_gen_names_th         = third_generation_theoretical[0]
      third_gen_probabilities_th = third_generation_theoretical[1]

      ### Character Selection
      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
	  
      player_name             = third_gen_names_th[cur_row][cur_col][cur_arr]
      player_name_probability = third_gen_probabilities_th[cur_row][cur_col][cur_arr] # Historical purposes
	  
      print "You start your journey as: #{player_name}. "
	  
      File.open("data/player/current_player_names.txt", "w") { |f|
        f.puts player_name
      }
    end

    def self.choose_name(*args)
      nation_state,     family_lineage, family_description,
      years_historical,  years_current,             p_name,
      m_name,                 g1_name1,           g1_name2,
      g1_name3,               g2_name1,           g2_name2,
      g2_name3,               g2_name4,           g2_name5,
      g3_name1,               g3_name2,           g3_name3,
      g3_name4,               g3_name5,            e_name1,
	                                           e_name2 = args
	
      context_node = [
        nation_state,
        family_lineage,
        family_description,
        years_historical,
	years_current ]

      # Confirmed first generation.
      first_generation = [[
        [[p_name, p_name],
         [p_name, m_name]],
		
        [[m_name, p_name],
         [m_name, m_name]],
      ], [
        [[0.5, 0.5], [0.5, 0.5]],
        [[0.5, 0.5], [0.5, 0.5]],
      ]]

      ## Context Data
      location          = context_node[0]
      occupation        = context_node[1]
      job_description   = context_node[2]
      previous_activity = context_node[3]
      current_activity  = context_node[4]

      puts "The curent location of #{occupation} is the #{location}. #{job_description} The previous family they inherited from operated between #{previous_activity}. The current #{occupation} operated in the years #{current_activity}."

      ## First Generational Data
      first_gen_names         = first_generation[0]
      first_gen_probabilities = first_generation[1]

      ### Character Selection
      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      first_gen_name        = first_gen_names[cur_row][cur_col][cur_arr]
      first_gen_probability = first_gen_probabilities[cur_row][cur_col][cur_arr]

      if    first_gen_name == p_name;
	print " Your patriarch had been #{p_name}, and the guillotine blade drips with blood when #{p_name} witnessed #{m_name}'s beheading. [ #{first_gen_name}, #{first_gen_probability} ]"

        BequestLineage::FamilyTree.hemato_tomato(g1_name1, g1_name2, g1_name3,
	                                         g2_name1, g2_name2, g2_name3, g2_name4, g2_name5,
	                                         g3_name1, g3_name2, g3_name3, g3_name4, g3_name5)
      elsif first_gen_name == m_name
	      print " Your matriarch had been #{m_name}, whose wounds were licked by your other mother's lips as #{m_name}'s severed head slowly faded to black. [ #{first_gen_name}, #{first_gen_probability} ]"
        
        puts "Therefore you're the only survivor."

        BequestLineage::FamilyTree.ehena_marie(e_name1, e_name2)
      else
        BequestLineage::FamilyTree.hemato_tomato(g1_name1, g1_name2, g1_name3,
	                                         g2_name1, g2_name2, g2_name3, g2_name4, g2_name5,
	                                         g3_name1, g3_name2, g3_name3, g3_name4, g3_name5)
      end
    end
  end
end

#########################################################################################
#                                   Subjects And Verbs                                  #
#########################################################################################
# The rest of the French grammar that doesn't need to have a specific word class.       #
#########################################################################################
class Subject
  def self.pronoun(specify_pronoun)
    specify_pronoun
  end
end

class Verb
  def self.mange(specify_eaten)
    "un / une mange #{specify_eaten}"
  end

  def self.coupe(specify_chopped)
    "un / une coupe #{specify_chopped}"
  end

  def self.tombe(specify_fallen)
    "un / une tombe #{specify_fallen}"
  end
end

#########################################################################################
#                                  Genders de Francais                                  #
#########################################################################################
# This is where the basic word classes from Francais goes, for classifying everything   #
# in the current language of prestige. There is a few exceptions that either denote     #
# Japanese of origin on are supernatural or cursed in nature.                           #
#########################################################################################
class Le
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Coloures                                      #
  #########################################################################################
  # These color sets are based on RGB and CYMK rather than the full color spectrum. I     #
  # will gradually expand these color names to include the full French color spectrum     #
  # that are covered in the masculine gender.                                             #
  #########################################################################################
  ## Shades
  define_method self.noir_one(black_thing),   "Le #{black_thing} noir"
  define_method self.gris_one(grey_thing),     "Le #{grey_thing} gris"
  define_method self.blanc_one(white_thing), "Le #{white_thing} blanc"

  ## Primary Colours
  define_method self.rouge_one(red_thing),   "Le #{red_thing} rouge"
  define_method self.vert_one(green_thing), "Le #{green_thing} vert"
  define_method self.bleu_one(blue_thing),   "Le #{blue_thing} bleu"

  define_method self.rouge_two(red_thing),   "Le #{red_thing} rouge"
  define_method self.vert_two(green_thing), "Le #{green_thing} vert"
  define_method self.bleu_two(blue_thing),   "Le #{blue_thing} bleu"
  
  ## Secondary Colors
  define_method self.jaune(yellow_thing),       "Le #{yellow_thing} jaune"
  define_method self.magenta(magenta_thing), "Le #{magenta_thing} magenta"
  define_method self.cyan(cyan_thing),             "Le #{cyan_thing} cyan"
  
  ## Other Colors
  define_method self.violette(purple_thing),     "Le #{purple_thing} violette"
  define_method self.citrone(lime_thing),        "Le #{lime_thing} citrone"
  define_method self.orange(orange_thing),       "Le #{orange_thing} orange"
  define_method self.vermillon(vermillon_thing), "Le #{vermillon} vermillon"
  define_method self.ambre(amber_thing),         "Le #{amber_thing} ambre"

  #########################################################################################
  #                                       Le Pets                                         #
  #########################################################################################
  define_method self.chat(cat_adjective),                          "Le chat #{cat_adjective} " # A cat
  define_method self.chien(dog_adjective),                        "Le chien #{dog_adjective} " # A dog
  define_method self.cochon_d_inde(gpig_adjective),      "Le cochon_d'inde #{gpig_adjective} " # A guinea pig
  define_method self.hamster(hamster_adjective),            "Le hamster #{hamster_adjective}" # A hamster
  define_method self.lapin(rabbit_adjective),                  "Le lapin #{rabbit_adjective}" # A rabbit
  define_method self.lezard(lizard_adjective),                "Le lezard #{lizard_adjective}" # A lizard
  define_method self.perroquet(parrot_adjective),          "Le perroquet #{parrot_adjective}" # A parrot
  define_method self.poisson_orange(goldfish_adjective),   "Le poisson #{goldfish_adjective}" # A goldfish

  #############################################################################################
  #                                    Select Farm Animals                                    #
  #############################################################################################
  define_method self.loup(wolf_adjective),                         "Le loup #{wolf_adjective}"
  define_method self.renard(fox_adjective),                          "Le fox #{fox_adjective}"
  define_method self.agneau(lamb_adjective),                     "Le agneau #{lamb_adjective}"
  define_method self.ane(donkey_adjective),                       "Le ane #{donkey_adjective}"
  define_method self.canard(duck_adjective),                     "Le canard #{duck_adjective}"
  define_method self.cheval(horse_adjective),                   "Le cheval #{horse_adjective}"
  define_method self.chevre(goat_adjective),                     "Le chevre #{goat_adjective}"
  define_method self.cochon(pig_adjective),                       "Le cochon #{pig_adjective}"
  define_method self.coq(rooster_adjective),                     "Le coq #{rooster_adjective}"
  define_method self.mouton(sheep_adjective),                   "Le mouton #{sheep_adjective}"
  define_method self.poney(pony_adjective),                       "Le poney #{pony_adjective}"
  define_method self.poussin(chick_adjective),                 "Le poussin #{chick_adjective}"
  define_method self.veau(calf_adjective),                         "Le veau #{celf_adjective}"

  #########################################################################################
  #                               Les Animeux De Le Foret                                 #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the masculine word class.             #
  #########################################################################################
  define_method self.cerf(deer_adjective),                         "Le cerf #{deer_adjective}"
  define_method self.ours(bear_adjective),                         "Le ours #{bear_adjective}"
  define_method self.raton_laveur(racoon_adjective),     "Le raton laveur #{racoon_adjective}"

  #############################################################################################
  #                                     Dungeon Crawling                                      #
  #############################################################################################
  define_method self.rat(rat_adjective),          "Le rat #{rat_adjective}"
  define_method self.araignee(spider_adjective),  "Le araignee #{spider_adjective}"
  define_method self.gobelin(goblin_adjective),   "Le gobelin #{goblin_adjective}"
  define_method self.squelette(undead_adjective), "Le squelette #{undead_adjective}" # consider inventing a term
  define_method self.limon(sludge_adjective),      "La limon #{sludge_adjective}"

  ## Specifies a quality for a specific one-way dungeon.
  define_method self.donjon_unique(passage_adjective), "Le donjon a sens unique #{passage_adjective}"
  
  #############################################################################################
  #                                      Les Familles                                         #
  #############################################################################################

  #############################################################################################
  #                                 Masculine Class Monsters                                  #
  #############################################################################################
  define_method self.wancien(cthulhu_adjective), "Le wancien #{cthulhu_adjective}"
  
  #############################################################################################
  #                                  Masculine Class Traps                                    #
  #############################################################################################
  define_method self.mien_poison(mine_adjective), "Le mien poison #{mine_adjective}"
  define_method self.pointe_de_le_radeau(raft_adjective), "Pointe De Le Radeau, c'est #{raft_adjective}."

  #############################################################################################
  #                                Food Items For Journeying                                  #
  #############################################################################################
  define_method self.pizza(topingu), "Topingu pour le pizza est #{topingu}."
end

class La
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Coloures                                      #
  #########################################################################################
  # These color sets are based on RGB and CYMK rather than the full color spectrum. I     #
  # will gradually expand these color names to include the full French color spectrum     #
  # that are covered in the masculine gender.                                             #
  #########################################################################################
  define_method self.chartreuse(chartreuse_thing), "La #{chartreuse_thing} chartreuse"

  #############################################################################################
  #                                    Select Farm Animals                                    #
  #############################################################################################
  define_method self.poule(chicken_adjective),         "La poule #{chicken_adjective}"
  define_method self.souris(mouse_adjective),           "La souris #{mouse_adjective}"
  define_method self.vache(cow_adjective),                 "La vache #{cow_adjective}"
  
  #########################################################################################
  #                               Les Animeux De Le Foret                                 #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the feminine word class.              #
  #########################################################################################
  define_method self.chouette(owl_adjective),           "La chouette #{owl_adjective}"

  #############################################################################################
  #                                     Dungeon Crawling                                      #
  #############################################################################################
  define_method self.chauve_souris(bat_adjective), "La chauve-souris #{bat_adjective}"

  #############################################################################################
  #                                         Unclear                                           #
  #############################################################################################
  # These are for terms where its unclear whether its referring to the ceramic or the thing   #
  # that a ceramic holds.                                                                     #
  #############################################################################################
  define_method self.vase(vase_adjective), "La vase #{vase_adjective}"
end

class Les
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Animeux                                       #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the plural word class.                #
  #########################################################################################
  define_method self.troupeau(herd_adjective), "Les troupeaus #{herd_adjective}"

  #########################################################################################
  #                                  Execution Methods                                    #
  #########################################################################################
  define_method self.faiseur_de_veuves(widowed_adjective), "Les feaiseur de veuves #{widowed_adjective}"
  
  #########################################################################################
  #                                  Plural Class Gear                                    #
  #########################################################################################
  define_method self.axes_de_urgence(ax_adjective), "Les Axes De Urgence #{ax_adjective}"
  
  define_method self.pizzas(topingos), "Anos topingos pour les pizzas sont #{topingos}."
end

## Les genders de feux pour Nihongo
class Anu
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                               Pseudo Masculine Class Monsters                         #
  ######################################################################################### 
  define_method self.umigarugu(gargoyal_adjective), "Anu Umigarugo #{gargoyal_adjective}"
end

class Ana
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                              Pseudo Feminine Class Monsters                           #
  #########################################################################################
  define_method self.girocinopeqa(plate_adjective), "Ana girocinopeqa #{plate_adjective}" # Girochin Plaque
end

class Anos
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                  Format Of Narrative                                  #
  #########################################################################################
  # This refers to a four-frame manga like format styled kind 4-koma, but specialized in  #
  # serious and morbid topics in ki-sho-ten-ketsu in a French dialect.                    #
  #########################################################################################
  define_method self.qutarocaderos(format_adjective), "Anos qutarocaderos #{format_adjective}"
  define_method        self.manfra(format_adjective), "Le manfra #{format_adjective}"
  
  #########################################################################################
  #                                  Pseudo Plural Class Gear                             #
  #########################################################################################
  define_method self.kaidokuzaios(antidote_adjective), "Anos Kaidokuzaios #{antidote_adjective}"
end

#############################################################################################
#                                     Hybrid PortManteau                                    #
#############################################################################################
class Te
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                       Masculine Class Hybrid Port Manteau Monster                       #
  ###########################################################################################
  define_method self.sepeceterekimige(spectre_adjective),  "Te sepeceterekimige #{spectre_adjective}" # spectre_de_kimigayo
  define_method self.acideserupenete(serpent_adjective),   "Te acideserupenete #{serpent_adjective}" # Acid Serpent
  define_method self.acideduragone(dragon_adjective),      "Te acideduragone #{dragon_adjective}"

  ###########################################################################################
  ##
  ###########################################################################################
end

class Ta
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                       Feminine Class Hybrid Port Manteau Monster                       #
  ###########################################################################################
  define_method self.sepecetere_imeperaterica(spectre_adjective), "Ta sepecetere iweperaterica #{spectre_adjective}" # spectre de imperatrice
  define_method self.noneseturasona(nun_adjective),               "Ta noneseturasona #{nun_adjective}"
  define_method self.habucorosa(female_elder_god_adjective),      "Ta habucorosa #{female_elder_god_adjective}"
end

class Deso
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                         Hybrid Plural Class Monsters And Traps                          #
  ###########################################################################################
  define_method self.teruposva(teruposva_adjective), "Deso teruposva #{teruposva_adjective}" # troupeau de sale
  define_method self.kokenopo(moss_adjective),             "Deso kokenopo #{moss_adjective}" # Koke No Poison
end

###############################################################################

###############################################################################
#                 Depricating Soon, Looking For Alternative                   #
###############################################################################
def sore_float(condition)    
  if condition
    if yield && yield.is_a?(Float)
      return true
    else
      return "Error: Sore_float is not a Float."
    end
  end
  
  false
end

def shikashi_float(already_done, condition)
  return true if already_done
  
  if condition
    if yield && yield.is_a?(Float)
      return true
    else
      return "Error: Shikashi_float is not a Float."
    end
  end
end

def matawa_float(already_done)
  value = yield unless already_done

  if value && value.is_a?(Float)
    return true
  else
    return "Error: Shikashi_float is not a Float."
  end
  
  unless already_done
    otherwise = already_done
      
    if defined(otherwise)
      puts otherwise
    end
  else
    puts "Otherwise is not defined."
  end
end

#######################################################################################
#                         Genetic Reinforcement Naive Bayes                           #
#######################################################################################
def generate_bounded_probability
  assumed_percentage = "0."

  alpha = ["c", "d", "e", "f", "g", "a", "b"]
  
  a = alpha.sample
  b = alpha.sample
  c = alpha.sample
  d = alpha.sample
  e = alpha.sample
  f = alpha.sample
  g = alpha.sample
  
  "#{assumed_percentage}#{c}#{d}#{e}#{f}#{g}#{a}#{b}"
end

def convert_to_piano_to_percent(fake_percent)
  # if number is 0.eaaaaf, convert to real percent
  real_percent = fake_percent.tr ".cdefgab", ".0123456"
  real_percent = real_percent.to_f

  real_percent
end

def logprob(lowest_probability, highest_probability)
  logarithm = lowest_probability / highest_probability
  
  logarithm
end

def get_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]

  matrix = [[
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
  ]]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  
  base_probability = probability_type[cur_row][cur_col][cur_arr].to_i
  
  current_probability = base_probability + graph_selection
  
  current_probability = current_probability + current_probability
  current_information = "#{current_label} #{current_definition}"
  
  puts "[ #{current_label} #{current_definition} ]"
  
  #File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  #File.write("data/statistics/label/current_information.txt",       current_information)

  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_definition)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def bifurcate_statistics(*args)
  a1, a2, a3,
  b1, b2, b3,
  c1, c2, c3 = args

  a = [a1, a2, a3]
  b = [b1, b2, b3]
  c = [c1, c2, c3]

  matrix = [[
    [[a[0], a[0], a[0]],
     [a[0], a[0], b[0]],
     [a[0], a[0], c[0]]],

    [[b[0], b[0], a[0]],
     [b[0], b[0], b[0]],
     [b[0], b[0], c[0]]],

    [[c[0], c[0], a[0]],
     [c[0], c[0], b[0]],
     [c[0], c[0], c[0]]],
  ], [
    [[a[1], a[1], a[1]],
     [a[1], a[1], b[1]],
     [a[1], a[1], c[1]]],

    [[b[1], b[1], a[1]],
     [b[1], b[1], b[1]],
     [b[1], b[1], c[1]]],

    [[c[1], c[1], a[1]],
     [c[1], c[1], b[1]],
     [c[1], c[1], c[1]]],
  ], [
    [[a[2], a[2], a[2]],
     [a[2], a[2], b[2]],
     [a[2], a[2], c[2]]],

    [[b[2], b[2], a[2]],
     [b[2], b[2], b[2]],
     [b[2], b[2], c[2]]],

    [[c[2], c[2], a[2]],
     [c[2], c[2], b[2]],
     [c[2], c[2], c[2]]],
  ]]

  symbols            = matrix[0]
  first_description  = matrix[1]
  second_description = matrix[2]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[marr]
  
  current_probability = 0.33 * 0.33 * 0.33 * 0.25

  current_label             = symbols[cur_row][cur_col][cur_arr]

  current_first_description = first_description[cur_row][cur_col][cur_arr]
  current_second_description = second_description[cur_row][cur_col][cur_arr]

  current_full_description = <<-DOUBLEDESCRIPTION
  #{current_first_description}
  #{current_second_description}
  DOUBLEDESCRIPTION

  current_information = "#{current_label}, '#{current_first_description}', '#{current_second_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_full_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def gain
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  current_probability    = current_probability + 0.15
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def loss
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  current_probability    = current_probability * 0.95
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def dynamic_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; gain
  elsif current_reward_structure == l2_reasses; 2.times do gain end
  elsif current_reward_structure == l3_reasses; 3.times do gain end
  elsif current_reward_structure == l4_reasses; 4.times do gain end
  else
    gain
  end
end

def dynamic_guillotine_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; loss
  elsif current_reward_structure == l2_reasses; 2.times do loss end
  elsif current_reward_structure == l3_reasses; 3.times do loss end
  elsif current_reward_structure == l4_reasses; 4.times do loss end
  else
    loss
  end
end

def dynamic_mode_switcher
  modes = [
    [["deposit", "deposit"], ["deposit", "extract"]],
    [["extract", "deposit"], ["extract", "extract"]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_mode = modes[cur_row][cur_col][cur_arr]

  if    current_mode == "deposit"; dynamic_reward_allocation
  elsif current_mode == "extract"; dynamic_guillotine_allocation
  else
    dynamic_guillotine_allocation
  end
end

def get_edge_cases(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  d = [ d1, d2 ]
  e = [ e1, e2 ]
  f = [ f1, f2 ]

  edges_cases = [[
    [ a[0], e[0], b[0], d[0], f[0], c[0] ],
    [ e[0], b[0], d[0], f[0], c[0], a[0] ],
    [ b[0], d[0], f[0], c[0], a[0], e[0] ],
    [ d[0], f[0], c[0], a[0], e[0], b[0] ],
    [ f[0], c[0], a[0], b[0], d[0], e[0] ],
    [ c[0], a[0], e[0], b[0], d[0], f[0] ],
  ], [
    [ a[1], e[1], b[1], d[1], f[1], c[1] ],
    [ e[1], b[1], d[1], f[1], c[1], a[1] ],
    [ b[1], d[1], f[1], c[1], a[1], e[1] ],
    [ d[1], f[1], c[1], a[1], e[1], b[1] ],
    [ f[1], c[1], a[1], b[1], d[1], e[1] ],
    [ c[1], a[1], e[1], b[1], d[1], f[1] ],
  ]]
  
  symbols      = edges_cases[0]
  descriptions = edges_cases[1]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  
  first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  first_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  second_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
  2.times do
    get_statistics(first_symbol,  first_description,
                   second_symbol, second_description,
                   third_symbol,  third_description)
                   
                   dynamic_mode_switcher
  end
end

def hyper_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  
  d = convert_to_piano_to_percent(generate_bounded_probability)

  matrix = [[
    [[[a[0], c[0]],
      [a[0], a[0]],
      [a[0], a[0]]],
     
     [[a[0], b[0]],
      [a[0], a[0]],
      [b[0], a[0]]],

     [[a[0], a[0]],
      [a[0], a[0]],
      [c[0], a[0]]]],

    [[[b[0], c[0]],
      [b[0], b[0]],
      [a[0], b[0]]],
    
     [[b[0], b[0]],
      [b[0], b[0]],
      [b[0], b[0]]],
    
     [[b[0], a[0]],
      [b[0], b[0]],
      [c[0], b[0]]]],

    [[[c[0], c[0]],
      [c[0], c[0]],
      [a[0], c[0]]],
    
     [[c[0], b[0]],
      [c[0], c[0]],
      [b[0], c[0]]],
    
     [[c[0], a[0]],
      [c[0], c[0]],
      [c[0], c[0]]]],
  ], [
    [[[a[1], c[1]],
      [a[1], a[1]],
      [a[1], a[1]]],
     
     [[a[1], b[1]],
      [a[1], a[1]],
      [b[1], a[1]]],
     
     [[a[1], a[1]],
      [a[1], a[1]],
      [c[1], a[1]]]],
     
    [[[b[1], c[1]],
      [b[1], b[1]],
      [a[1], b[1]]],
    
     [[b[1], b[1]],
      [b[1], b[1]],
      [b[1], b[1]]],
    
     [[b[1], a[1]],
      [b[1], b[1]],
      [c[1], b[1]]]],

    [[[c[1], c[1]],
      [c[1], c[1]],
      [a[1], c[1]]],
    
     [[c[1], b[1]],
      [c[1], c[1]],
      [b[1], c[1]]],
    
     [[c[1], a[1]],
      [c[1], c[1]],
      [c[1], c[1]]]],
  ]]
  
  symbols               = matrix[0]
  descriptions          = matrix[1]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  msub =     [ -1, -2 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  sub_options = [0, 1]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[msub]
  cur_sub = sub_options[msub]
  
  current_probability = 0.33 * 0.33 * 0.33 * 0.25
  current_label       = symbols[cur_row][cur_col][cur_arr][cur_sub]
  current_description = descriptions[cur_row][cur_col][cur_arr][cur_sub]
  current_information = "'#{current_label}', '#{current_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def negative_hyper_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  
  d = convert_to_piano_to_percent(generate_bounded_probability)

  matrix = [[
    [[[a[0], c[0]],
      [a[0], a[0]],
      [a[0], a[0]]],
     
     [[a[0], b[0]],
      [a[0], a[0]],
      [b[0], a[0]]],

     [[a[0], a[0]],
      [a[0], a[0]],
      [c[0], a[0]]]],

    [[[b[0], c[0]],
      [b[0], b[0]],
      [a[0], b[0]]],
    
     [[b[0], b[0]],
      [b[0], b[0]],
      [b[0], b[0]]],
    
     [[b[0], a[0]],
      [b[0], b[0]],
      [c[0], b[0]]]],

    [[[c[0], c[0]],
      [c[0], c[0]],
      [a[0], c[0]]],
    
     [[c[0], b[0]],
      [c[0], c[0]],
      [b[0], c[0]]],
    
     [[c[0], a[0]],
      [c[0], c[0]],
      [c[0], c[0]]]],
  ], [
    [[[a[1], c[1]],
      [a[1], a[1]],
      [a[1], a[1]]],
     
     [[a[1], b[1]],
      [a[1], a[1]],
      [b[1], a[1]]],
     
     [[a[1], a[1]],
      [a[1], a[1]],
      [c[1], a[1]]]],
     
    [[[b[1], c[1]],
      [b[1], b[1]],
      [a[1], b[1]]],
    
     [[b[1], b[1]],
      [b[1], b[1]],
      [b[1], b[1]]],
    
     [[b[1], a[1]],
      [b[1], b[1]],
      [c[1], b[1]]]],

    [[[c[1], c[1]],
      [c[1], c[1]],
      [a[1], c[1]]],
    
     [[c[1], b[1]],
      [c[1], c[1]],
      [b[1], c[1]]],
    
     [[c[1], a[1]],
      [c[1], c[1]],
      [c[1], c[1]]]],
  ]]
  
  symbols               = matrix[0]
  descriptions          = matrix[1]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  msub =     [ -1, -2 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  sub_options = [0, 1]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[msub]
  cur_sub = sub_options[msub]
  
  current_probability = -0.33 * -0.33 * -0.33 * -0.25
  current_label       = symbols[cur_row][cur_col][cur_arr][cur_sub]
  current_description = descriptions[cur_row][cur_col][cur_arr][cur_sub]
  current_information = "'#{current_label}', '#{current_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def get_liminal_cases(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2, program_name, file_extension)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  d = [ d1, d2 ]
  e = [ e1, e2 ]
  f = [ f1, f2 ]

  edges_cases = [[
    [ a[0], e[0], b[0], d[0], f[0], c[0] ],
    [ e[0], b[0], d[0], f[0], c[0], a[0] ],
    [ b[0], d[0], f[0], c[0], a[0], e[0] ],
    [ d[0], f[0], c[0], a[0], e[0], b[0] ],
    [ f[0], c[0], a[0], b[0], d[0], e[0] ],
    [ c[0], a[0], e[0], b[0], d[0], f[0] ],
  ], [
    [ a[1], e[1], b[1], d[1], f[1], c[1] ],
    [ e[1], b[1], d[1], f[1], c[1], a[1] ],
    [ b[1], d[1], f[1], c[1], a[1], e[1] ],
    [ d[1], f[1], c[1], a[1], e[1], b[1] ],
    [ f[1], c[1], a[1], b[1], d[1], e[1] ],
    [ c[1], a[1], e[1], b[1], d[1], f[1] ],
  ]]
  
  symbols      = edges_cases[0]
  descriptions = edges_cases[1]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  
  first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  first_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  second_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
  2.times do
    hyper_statistics(first_symbol,  first_description,
                     second_symbol, second_description,
                     third_symbol,  third_description)
                   
    dynamic_mode_switcher
  end
  
  program_name    = File.read("data/statistics/symbol/current_label.txt").tr ":", ""
  program_process = File.read("data/statistics/description/current_description.txt")

  program_probability = File.read("data/statistics/probability/current_probability.txt").to_f

  if program_probability > 0.51
    File.open("confirmed/scripts/#{program_name}.#{file_extension}", "w") { |f|
      wrapped_script = <<-Crystal  
      #{program_process}
      Crystal

      f.puts wrapped_script
    }
  else
    puts "BIANCA: I'm not super confident about this creation."

    File.open("unaudited/scripts/#{program_name}.#{file_extension}", "w") { |f|
      wrapped_script = <<-Crystal  
      #{program_process}
      Crystal

      f.puts wrapped_script
    }
  end
end

##########################################################################################
#                                   Liminal Edge Cases                                   #
##########################################################################################
# Uses liminal or subspatial analyses for finding edge cases. This mitigates issues with #
# the original statistical algorithm being susceptible to the "Oz Factor".               #
##########################################################################################
def liminal_edge_cases(*args)
  a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2 = args

  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  d = [ d1, d2 ]
  e = [ e1, e2 ]
  f = [ f1, f2 ]

  edges_cases = [[
    [ a[0], e[0], b[0], d[0], f[0], c[0] ],
    [ e[0], b[0], d[0], f[0], c[0], a[0] ],
    [ b[0], d[0], f[0], c[0], a[0], e[0] ],
    [ d[0], f[0], c[0], a[0], e[0], b[0] ],
    [ f[0], c[0], a[0], b[0], d[0], e[0] ],
    [ c[0], a[0], e[0], b[0], d[0], f[0] ],
  ], [
    [ a[1], e[1], b[1], d[1], f[1], c[1] ],
    [ e[1], b[1], d[1], f[1], c[1], a[1] ],
    [ b[1], d[1], f[1], c[1], a[1], e[1] ],
    [ d[1], f[1], c[1], a[1], e[1], b[1] ],
    [ f[1], c[1], a[1], b[1], d[1], e[1] ],
    [ c[1], a[1], e[1], b[1], d[1], f[1] ],
  ]]
  
  symbols      = edges_cases[0]
  descriptions = edges_cases[1]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  
  first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  first_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  second_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
  2.times do
    hyper_statistics(first_symbol,  first_description,
                     second_symbol, second_description,
                     third_symbol,  third_description)
                   
    dynamic_reward_allocation
    
    # system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
  end

  current_probability = File.read("./data/statistics/probability/current_probability.txt").to_f
  current_description = File.read("./data/statistics/description/current_description.txt")
  current_symbol      = File.read("./data/statistics/symbol/current_label.txt")
    
  encrire("#{current_symbol.upcase} #{current_description}")
end

#####################################################################################
#                               Limianl Trifd Parser                                #
#####################################################################################
# This combines the characteristics of standard liminal probability analyses, and   #
# trifid analytics to be able to see between the datapoints that are explicitely    #
# stated in a conventional dataset. It also mitigates issues related to the Oz      #
# factor by making it resilient under environmental anomlaies.                      #
#####################################################################################
def liminal_parser(s1, s2, n1, n2, a1, a2,
                   d1, d2, f1, f2, o1, o2,
                   r1, r2, u1, u2, t1, t2,
                   e1, e2, b1, b2, c1, c2,
                   g1, g2, h1, h2, m1, m2,
                   p1, p2, q1, q2, v1, v2,
                   w1, w2,         x1, x2)
                                   
  s  = [s1, s2]; n  = [n1, n2]; a  = [a1, a2];
  d  = [d1, d2]; f  = [f1, f2]; o  = [o1, o2];
  r  = [r1, r2]; u  = [u1, u2]; t  = [t1, t2];
  e  = [e1, e2]; b  = [b1, b2]; c  = [c1, c2];
  g  = [g1, g2]; h  = [h1, h2]; m  = [m1, m2];
  pu = [p1, p2]; q  = [q1, q2]; v  = [v1, v2];
  w  = [w1, w2]; x  = [x1, x2]

  symbols = [[
    [[s[0], r[0]], [n[0], o[0]], [a[0], f[0]]], [[ e[0], v[0]], [b[0], q[0]], [c[0], pu[0]]], [[w[0], t[0]], [x[0], u[0]], [s[0], r[0]]],
    [[d[0], d[0]], [f[0], a[0]], [o[0], n[0]]], [[ g[0], g[0]], [h[0], h[0]], [m[0],  m[0]]], [[n[0], o[0]], [a[0], f[0]], [d[0], d[0]]],
    [[r[0], s[0]], [u[0], x[0]], [t[0], w[0]]], [[pu[0], e[0]], [q[0], b[0]], [v[0],  c[0]]], [[f[0], a[0]], [o[0], n[0]], [r[0], s[0]]],
  ], [
    [[w[0], t[0]], [x[0], u[0]], [s[0], r[0]]], [[s[0], r[0]], [n[0], o[0]], [a[0], f[0]]], [[ e[0], v[0]], [b[0], q[0]], [c[0], pu[0]]],
    [[n[0], o[0]], [a[0], f[0]], [d[0], d[0]]], [[d[0], d[0]], [f[0], a[0]], [o[0], n[0]]], [[ g[0], g[0]], [h[0], h[0]], [m[0],  m[0]]],
    [[f[0], a[0]], [o[0], n[0]], [r[0], s[0]]], [[r[0], s[0]], [u[0], x[0]], [t[0], w[0]]], [[pu[0], e[0]], [q[0], b[0]], [v[0],  c[0]]],
  ], [
    [[ e[0], v[0]], [b[0], q[0]], [c[0], pu[0]]], [[w[0], t[0]], [x[0], u[0]], [s[0], r[0]]], [[s[0], r[0]], [n[0], o[0]], [a[0], f[0]]],
    [[ g[0], g[0]], [h[0], h[0]], [m[0],  m[0]]], [[n[0], o[0]], [a[0], f[0]], [d[0], d[0]]], [[d[0], d[0]], [f[0], a[0]], [o[0], n[0]]],
    [[pu[0], e[0]], [q[0], b[0]], [v[0],  c[0]]], [[f[0], a[0]], [o[0], n[0]], [r[0], s[0]]], [[r[0], s[0]], [u[0], x[0]], [t[0], w[0]]],
  ]]
  
  descriptions = [[
    [[s[1], r[1]], [n[1], o[1]], [a[1], f[1]]], [[ e[1], v[1]], [b[1], q[1]], [c[1], pu[1]]], [[w[1], t[1]], [x[1], u[1]], [s[1], r[1]]],
    [[d[1], d[1]], [f[1], a[1]], [o[1], n[1]]], [[ g[1], g[1]], [h[1], h[1]], [m[1],  m[1]]], [[n[1], o[1]], [a[1], f[1]], [d[1], d[1]]],
    [[r[1], s[1]], [u[1], x[1]], [t[1], w[1]]], [[pu[1], e[1]], [q[1], b[1]], [v[1],  c[1]]], [[f[1], a[1]], [o[1], n[1]], [r[1], s[1]]],
  ], [
    [[w[1], t[1]], [x[1], u[1]], [s[1], r[1]]], [[s[1], r[1]], [n[1], o[1]], [a[1], f[1]]], [[ e[1], v[1]], [b[1], q[1]], [c[1], pu[1]]],
    [[n[1], o[1]], [a[1], f[1]], [d[1], d[1]]], [[d[1], d[1]], [f[1], a[1]], [o[1], n[1]]], [[ g[1], g[1]], [h[1], h[1]], [m[1],  m[1]]],
    [[f[1], a[1]], [o[1], n[1]], [r[1], s[1]]], [[r[1], s[1]], [u[1], x[1]], [t[1], w[1]]], [[pu[1], e[1]], [q[1], b[1]], [v[1],  c[1]]],
  ], [
    [[ e[1], v[1]], [b[1], q[1]], [c[1], pu[1]]], [[w[1], t[1]], [x[1], u[1]], [s[1], r[1]]], [[s[1], r[1]], [n[1], o[1]], [a[1], f[1]]],
    [[ g[1], g[1]], [h[1], h[1]], [m[1],  m[1]]], [[n[1], o[1]], [a[1], f[1]], [d[1], d[1]]], [[d[1], d[1]], [f[1], a[1]], [o[1], n[1]]],
    [[pu[1], e[1]], [q[1], b[1]], [v[1],  c[1]]], [[f[1], a[1]], [o[1], n[1]], [r[1], s[1]]], [[r[1], s[1]], [u[1], x[1]], [t[1], w[1]]],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  lim_options = [0, 1]
  
  ## Selects the current row
  cur_row = row_options.sample
  
  ## Selects the current collumn
  cur_col = col_options.sample

  ## Selects the current array index
  cur_arr = arr_options.sample
  
  ## Selects one of two possible states for any given index.
  cur_lim = lim_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col][cur_lim]
  current_description = descriptions[cur_row][cur_arr][cur_col][cur_lim]
  current_probability = 0.33 * -0.33 * 0.33
  current_information = "#{current_symbol}, '#{current_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                               Night Walker Algorithm                              #
#####################################################################################
# This is designed to monitor and analyze patterns in information as if one were    #
# trying to blend in with "night walkers" whom take jobs no other types of people   #
# will take. In Uploaded Fairy, the connation is jobs like Le Famille Guillotine,   #
# other other types of morbid professions.                                          #
#                                                                                   #
# Of my machine learning software, this is the only one made explicitely for the    #
# purpose of monitoring a specific family in my alternate history timeline for my   #
# science fiction, such as monitoring the gap between their daywalker and night     #
# walker activities.                                                                #
#####################################################################################
def nuitmarcheuse(n1, n2, i1, i2, g1, g2,
                  h1, h2, t1, t2, w1, w2,
                  a1, a2, l1, l2, k1, k2,
                  e1, e2, r1, r2, b1, b2,
                  c1, c2, d1, d2, f1, f2,
                  j1, j2, m1, m2, o1, o2,
                  p1, p2, q1, q2, s1, s2,
                  u1, u2,         v1, v2) # Lines 37, 41, 44, 49, 53

  n = [n1, n2]
  i = [i1, i2]
  g = [g1, g2]
  h = [h1, h2]
  t = [t1, t2]
  w = [w1, w2]
  a = [a1, a2]
  l = [l1, l2]
  k = [k1, k2]
  e = [e1, e2]
  r = [r1, r2]
  b = [b1, b2]
  c = [c1, c2]
  d = [d1, d2]
  f = [f1, f2]
  j = [j1, j2]
  m = [m1, m2]
  o = [o1, o2]
  p = [p1, p2]
  q = [q1, q2]
  s = [s1, s2]
  u = [u1, u2]
  v = [v1, v2]
  
  nightwalker_symbols = [[
    [n[0], i[0], g[0]], [e[0], r[0], a[0]], [j[0], k[0], m[0]],
    [h[0], t[0], w[0]], [b[0], c[0], d[0]], [o[0], p[0], q[0]],
    [a[0], l[0], k[0]], [e[0], f[0], g[0]], [s[0], u[0], v[0]],
  ], [
    [j[0], k[0], m[0]], [n[0], i[0], g[0]], [e[0], r[0], a[0]],
    [o[0], p[0], q[0]], [h[0], t[0], w[0]], [b[0], c[0], d[0]],
    [s[0], u[0], v[0]], [a[0], l[0], k[0]], [e[0], f[0], g[0]],
  ], [
    [e[0], r[0], a[0]], [j[0], k[0], m[0]], [n[0], i[0], g[0]],
    [b[0], c[0], d[0]], [o[0], p[0], q[0]], [h[0], t[0], w[0]],
    [e[0], f[0], g[0]], [s[0], u[0], v[0]], [a[0], l[0], k[0]],
  ]]

  nightwalker_descriptions = [[
    [n[1], i[1], g[1]], [e[1], r[1], a[1]], [j[1], k[1], m[1]],
    [h[1], t[1], w[1]], [b[1], c[1], d[1]], [o[1], p[1], q[1]],
    [a[1], l[1], k[1]], [e[1], f[1], g[1]], [s[1], u[1], v[1]],
  ], [
    [j[1], k[1], m[1]], [n[1], i[1], g[1]], [e[1], r[1], a[1]],
    [o[1], p[1], q[1]], [h[1], t[1], w[1]], [b[1], c[1], d[1]],
    [s[1], u[1], v[1]], [a[1], l[1], k[1]], [e[1], f[1], g[1]],
  ], [
    [e[1], r[1], a[1]], [j[1], k[1], m[1]], [n[1], i[1], g[1]],
    [b[1], c[1], d[1]], [o[1], p[1], q[1]], [h[1], t[1], w[1]],
    [e[1], f[1], g[1]], [s[1], u[1], v[1]], [a[1], l[1], k[1]],
  ]]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = nightwalker_symbols[cur_row][cur_arr][cur_col]
  current_description = nightwalker_descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "#{current_symbol}, '#{current_description}'"
end

def marcheuse_de_jour(d1, d2, a1, a2, y1, y2,
                      w1, w2, l1, l2, k1, k2,
                      e1, e2, r1, r2, b1, b2,
                      c1, c2, f1, f2, g1, g2,
                      h1, h2, i1, i2, j1, j2,
                      m1, m2, n1, n2, o1, o2,
                      p1, p2, q1, q2, s1, s2,
                      t1, t2, u1, u2, v1, v2,
                      x1, x2)
                      
  d = [ d1, d2 ]; a = [ a1, a2 ]; y = [ y1, y2 ];
  w = [ w1, w2 ]; l = [ l1, l2 ]; k = [ k1, k2 ];
  e = [ e1, e2 ]; r = [ r1, r2 ]; b = [ b1, d2 ];
  c = [ c1, c2 ]; f = [ f1, f2 ]; g = [ g1, g2 ];
  h = [ h1, h2 ]; i = [ i1, o2 ]; j = [ j1, j2 ];
  m = [ m1, m2 ]; n = [ n1, n2 ]; o = [ o1, o2 ];
  p = [ p1, p2 ]; q = [ q1, q2 ]; s = [ s1, s2 ];
  t = [ t1, t2 ]; u = [ u1, u2 ]; v = [ v1, b2 ];
  x = [ x1, x2 ]

  daywalker_symbols = [[
    [d[0], a[0], y[0]], [c[0], f[0], g[0]], [p[0], q[0], s[0]],
    [w[0], l[0], k[0]], [h[0], i[0], j[0]], [t[0], u[0], v[0]],
    [e[0], r[0], b[0]], [m[0], n[0], o[0]], [w[0], x[0], y[0]],
  ], [
    [p[0], q[0], s[0]], [d[0], a[0], y[0]], [c[0], f[0], g[0]],
    [t[0], u[0], v[0]], [w[0], l[0], k[0]], [h[0], i[0], j[0]],
    [w[0], x[0], y[0]], [e[0], r[0], b[0]], [m[0], n[0], o[0]],
  ], [
    [c[0], f[0], g[0]], [p[0], q[0], s[0]], [d[0], a[0], y[0]],
    [h[0], i[0], j[0]], [t[0], u[0], v[0]], [w[0], l[0], k[0]],
    [m[0], n[0], o[0]], [w[0], x[0], y[0]], [e[0], r[0], b[0]],
  ]]
  
  daywalker_descriptions = [[
    [d[1], a[1], y[1]], [c[1], f[1], g[1]], [p[1], q[1], s[1]],
    [w[1], l[1], k[1]], [h[1], i[1], j[1]], [t[1], u[1], v[1]],
    [e[1], r[1], b[1]], [m[1], n[1], o[1]], [w[1], x[1], y[1]],
  ], [
    [p[1], q[1], s[1]], [d[1], a[1], y[1]], [c[1], f[1], g[1]],
    [t[1], u[1], v[1]], [w[1], l[1], k[1]], [h[1], i[1], j[1]],
    [w[1], x[1], y[1]], [e[1], r[1], b[1]], [m[1], n[1], o[1]],
  ], [
    [c[1], f[1], g[1]], [p[1], q[1], s[1]], [d[1], a[1], y[1]],
    [h[1], i[1], j[1]], [t[1], u[1], v[1]], [w[1], l[1], k[1]],
    [m[1], n[1], o[1]], [w[1], x[1], y[1]], [e[1], r[1], b[1]],
  ]]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = daywalker_symbols[cur_row][cur_arr][cur_col]
  current_description = daywalker_descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "#{current_symbol}, '#{current_description}'"

  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

#####################################################################################
#                                  Devesfukyana                                     #
#####################################################################################
# Derived from the term dream-scanner, is in referenced to a subset of paranormal   #
# detectives that studying subconcious patterns in dissidents in order to see what  #
# actions they will plan next. In context, Nadine was monitored by one that         #
# eventually defected from Tanner.                                                  #
#####################################################################################
def devesfukyana ( d1, d2, e1, e2, v1, v2,
                   s1, s2, f1, f2, u1, u2,
                   k1, k2, y1, y2, a1, a2,
                   n1, n2, b1, b2, c1, c2,
                   g1, g2, h1, h2, i1, i2,
                   j1, j2, m1, m2, o1, o2,
                   p1, p2, q1, q2, t1, t2,
                   w1, w2, x1, x2, z1, z2 )

  d = [ d1, d2 ]; e  = [ e1, e2 ]; v = [ v1, v2 ];
  s = [ s1, s2 ]; f  = [ f1, f2 ]; u = [ u1, u2 ];
  k = [ k1, k2 ]; y  = [ y1, y2 ]; a = [ a1, a2 ];
  n = [ n1, n2 ]; b  = [ b1, b2 ]; c = [ c1, c2 ];
  g = [ g1, g2 ]; h  = [ h1, h2 ]; i = [ i1, i2 ];
  j = [ j1, j2 ]; k  = [ k1, k2 ]; m = [ m1, m2 ];
  o = [ o1, o2 ]; pu = [ p1, p2 ]; q = [ q1, q2 ];
  t = [ t1, t2 ]; w  = [ w1, w2 ]; x = [ x1, x2 ];
  z = [ z1, z2 ]
  
  symbols = [[
    [ d[0], e[0], v[0] ], [ n[0], b[0], c[0] ], [ o[0], pu[0], q[0] ],
    [ s[0], f[0], u[0] ], [ g[0], h[0], i[0] ], [ t[0],  w[0], x[0] ],
    [ k[0], y[0], a[0] ], [ j[0], l[0], m[0] ], [ z[0],  d[0], e[0] ],
  ], [
    [ o[0], pu[0], q[0] ], [ d[0], e[0], v[0] ], [ n[0], b[0], c[0] ],
    [ t[0],  w[0], x[0] ], [ s[0], f[0], u[0] ], [ g[0], h[0], i[0] ],
    [ z[0],  d[0], e[0] ], [ k[0], y[0], a[0] ], [ j[0], l[0], m[0] ],
  ], [
    [ n[0], b[0], c[0] ], [ o[0], pu[0], q[0] ], [ d[0], e[0], v[0] ],
    [ g[0], h[0], i[0] ], [ t[0],  w[0], x[0] ], [ s[0], f[0], u[0] ],
    [ j[0], l[0], m[0] ], [ z[0],  d[0], e[0] ], [ k[0], y[0], a[0] ],
  ]]

  descriptions = [[
    [ d[1], e[1], v[1] ], [ n[1], b[1], c[1] ], [ o[1], pu[1], q[1] ],
    [ s[1], f[1], u[1] ], [ g[1], h[1], i[1] ], [ t[1],  w[1], x[1] ],
    [ k[1], y[1], a[1] ], [ j[1], l[1], m[1] ], [ z[1],  d[1], e[1] ],
  ], [
    [ o[1], p[1], q[1] ], [ d[1], e[1], v[1] ], [ n[1], b[1], c[1] ],
    [ t[1], w[1], x[1] ], [ s[1], f[1], u[1] ], [ g[1], h[1], i[1] ],
    [ z[1], d[1], e[1] ], [ k[1], y[1], a[1] ], [ j[1], l[1], m[1] ],
  ], [
    [ n[1], b[1], c[1] ], [ o[1], p[1], q[1] ], [ d[1], e[1], v[1] ],
    [ g[1], h[1], i[1] ], [ t[1], w[1], x[1] ], [ s[1], f[1], u[1] ],
    [ j[1], l[1], m[1] ], [ z[1], d[1], e[1] ], [ k[1], y[1], a[1] ],
  ]]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                                  Gurasmitene                                      #
#####################################################################################
# Literally "Grass Mittens", which roughly translates to having a green thumb, or   #
# alternatively sleeping in the grass. This charts uses Gurasmittene as a keyword   #
# for a search operation                                                            #
#####################################################################################
def gurasmitene ( g1, g2, u1, u2, r1, r2,
                  a1, a2, s1, s2, m1, m2,
                  i1, i2, t1, t2, e1, e2,
                  b1, b2, c1, c2, d1, d2,
                  f1, f2, h1, h2, j1, j2,
                  n1, n2, k1, k2, p1, p2,
                  q1, q2, v1, v2, x1, x2,
                          z1, z2, o1, o2)

  g = [ g1, g2 ]; u = [ u1, u2 ]; r  = [ r1, r2 ];
  a = [ a1, a2 ]; s = [ s1, s2 ]; m  = [ m1, m2 ];
  i = [ i1, i2 ]; t = [ t1, t2 ]; e  = [ e1, e2 ];
  b = [ b1, b2 ]; c = [ c1, c2 ]; d  = [ d1, d2 ];
  f = [ f1, f2 ]; h = [ h1, h2 ]; j  = [ j1, j2 ];
  n = [ n1, n2 ]; k = [ k1, k2 ]; pu = [ p1, p2 ];
  q = [ q1, q2 ]; v = [ v1, v2 ]; x  = [ x1, x2 ];
                  z = [ z1, z2 ]; o  = [ o1, o2 ];

  symbols = [[
    [ g[0], u[0], r[0] ], [ b[0], c[0],  d[0] ], [ q[0], u[0], v[0] ],
    [ a[0], s[0], m[0] ], [ f[0], h[0],  j[0] ], [ x[0], z[0], o[0] ],
    [ i[0], t[0], e[0] ], [ n[0], k[0], pu[0] ], [ g[0], u[0], r[0] ],
  ], [
    [ q[0], u[0], v[0] ], [ g[0], u[0], r[0] ], [ b[0], c[0],  d[0] ],
    [ x[0], z[0], o[0] ], [ a[0], s[0], m[0] ], [ f[0], h[0],  j[0] ],
    [ g[0], u[0], r[0] ], [ i[0], t[0], e[0] ], [ n[0], k[0], pu[0] ],
  ], [
    [ b[0], c[0],  d[0] ], [ q[0], u[0], v[0] ], [ g[0], u[0], r[0] ],
    [ f[0], h[0],  j[0] ], [ x[0], z[0], o[0] ], [ a[0], s[0], m[0] ],
    [ n[0], k[0], pu[0] ], [ g[0], u[0], r[0] ], [ i[0], t[0], e[0] ],
  ]]

  descriptions = [[
    [ g[1], u[1], r[1] ], [ b[1], c[1],  d[1] ], [ q[1], u[1], v[1] ],
    [ a[1], s[1], m[1] ], [ f[1], h[1],  j[1] ], [ x[1], z[1], o[1] ],
    [ i[1], t[1], e[1] ], [ n[1], k[1], pu[1] ], [ g[1], u[1], r[1] ],
  ], [
    [ q[1], u[1], v[1] ], [ g[1], u[1], r[1] ], [ b[1], c[1],  d[1] ],
    [ x[1], z[1], o[1] ], [ a[1], s[1], m[1] ], [ f[1], h[1],  j[1] ],
    [ g[1], u[1], r[1] ], [ i[1], t[1], e[1] ], [ n[1], k[1], pu[1] ],
  ], [
    [ b[1], c[1],  d[1] ], [ q[1], u[1], v[1] ], [ g[1], u[1], r[1] ],
    [ f[1], h[1],  j[1] ], [ x[1], z[1], o[1] ], [ a[1], s[1], m[1] ],
    [ n[1], k[1], pu[1] ], [ g[1], u[1], r[1] ], [ i[1], t[1], e[1] ],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                                  Sanadforutese                                    #
#####################################################################################
# Derived from the term for sand fortress, a kind of shanty town or fortress made   #
# out of crashed spaceships.                                                        #
#####################################################################################
def sanadforutese_unit( s1, s2, a1, a2, n1, n2,
                        d1, d2, f1, f2, o1, o2,
                        r1, r2, u1, u2, t1, t2,
                        b1, b2, c1, c2, g1, g2,
                        h1, h2, j1, j2, k1, k2,
                        e1, e2, m1, m2, p1, p2,
                        q1, q2, v1, v2, x1, x2,
                                        z1, z2)
 
  b = [ b1, b2 ]; c  = [ c1, c2 ]; d = [ d1, d2 ];
  f = [ f1, f2 ]; g  = [ g1, g2 ]; h = [ h1, h2 ];
  j = [ j1, j2 ]; k  = [ k1, k2 ]; m = [ m1, m2 ];
  n = [ n1, n2 ]; pu = [ p1, p2 ]; q = [ q1, q2 ];
  r = [ r1, r2 ]; s  = [ s1, s2 ]; t = [ t1, t2 ];
  u = [ u1, u2 ]; v  = [ v1, v2 ]; x = [ x1, x2 ];
  z = [ z1, z2 ]; a  = [ a1, a2 ]; e = [ e1, e2 ];
  o = [ o1, o2 ]

  symbols = [[
    [s[0], a[0], n[0]],  [b[0], c[0],  g[0]],  [q[0], v[0], x[0]],
    [d[0], f[0], o[0]],  [h[0], j[0],  k[0]],  [z[0], s[0], a[0]],
    [r[0], u[0], t[0]],  [e[0], m[0], pu[0]],  [n[0], d[0], f[0]],
  ], [
    [q[0], v[0], x[0]],  [s[0], a[0], n[0]],  [b[0], c[0],  g[0]],
    [z[0], s[0], a[0]],  [d[0], f[0], o[0]],  [h[0], j[0],  k[0]],
    [n[0], d[0], f[0]],  [r[0], u[0], t[0]],  [e[0], m[0], pu[0]],
  ], [
    [b[0], c[0],  g[0]],  [q[0], v[0], x[0]],  [s[0], a[0], n[0]],
    [h[0], j[0],  k[0]],  [z[0], s[0], a[0]],  [d[0], f[0], o[0]],
    [e[0], m[0], pu[0]],  [n[0], d[0], f[0]],  [r[0], u[0], t[0]],
  ]]
  
  descriptions = [[
    [s[1], a[1], n[1]],  [b[1], c[1],  g[1]],  [q[1], v[1], x[0]],
    [d[1], f[1], o[1]],  [h[1], j[1],  k[1]],  [z[1], s[1], a[0]],
    [r[1], u[1], t[1]],  [e[1], m[1], pu[1]],  [d[1], f[1], o[0]],
  ], [
    [q[1], v[1], x[1]],  [s[1], a[1], n[1]],  [b[1], c[1],  g[0]],
    [z[1], s[1], a[1]],  [d[1], f[1], o[1]],  [h[1], j[1],  k[0]],
    [d[1], f[1], o[1]],  [r[1], u[1], t[1]],  [e[1], m[1], pu[0]],
  ], [
    [b[1], c[1],  g[1]],  [q[1], v[1], x[1]],  [s[1], a[1], n[1]],
    [h[1], j[1],  k[1]],  [z[1], s[1], a[1]],  [d[1], f[1], o[1]],
    [e[1], m[1], pu[1]],  [d[1], f[1], o[1]],  [r[1], u[1], t[1]],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * -0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                                  Seveniripura                                     #
#####################################################################################
# Souvenir En Ripurei - Playing the epilogue of a "side character" through the path #
# of their own memories.                                                            #
#                                                                                   #
# This is done to monitor to see what other people in a person's life might be      #
# important, even if they don't necessarily acknowledge an explicit relationship.   #
#####################################################################################
# You need fifty datapoints in order to train this algorithm.
def suveniripura(s1, s2, u1, u2, v1, v2,
                 e1, e2, n1, n2, i1, i2,
                 r1, r2, p1, p2, a1, a2,
                 b1, b2, c1, c2, d1, d2,
                 f1, f2, g1, g2, h1, h2,
                 j1, j2, k1, k2, m1, m2,
                 o1, o2, q1, q2, t1, t2,
                 w1, w2, x1, x2, y1, y2,
                 z1, z2)

  s = [ s1, s2 ]; u  = [ u1, u2 ]; v = [ v1, v2 ];
  e = [ e1, e2 ]; n  = [ n1, n2 ]; i = [ i1, i2 ];
  r = [ r1, r2 ]; pu = [ p1, p2 ]; a = [ a1, a2 ];
  b = [ b1, b2 ]; c  = [ c1, c2 ]; d = [ d1, d2 ];
  f = [ f1, f2 ]; g  = [ g1, g2 ]; h = [ h1, h2 ];
  j = [ j1, j2 ]; k  = [ k1, k2 ]; m = [ m1, m2 ];
  o = [ o1, o2 ]; q  = [ q1, q2 ]; t = [ t1, t2 ];
  w = [ w1, w2 ]; x  = [ x1, x2 ]; y = [ y1, y2 ];
  z = [ z1, z2 ]

  symbols = [[
    [ s[0],  u[0], v[0] ], [ b[0], c[0], d[0] ], [ o[0], q[0], t[0] ],
    [ e[0],  n[0], i[0] ], [ f[0], g[0], h[0] ], [ w[0], x[0], y[0] ],
    [ r[0], pu[0], a[0] ], [ j[0], k[0], m[0] ], [ z[0], s[0], u[0] ],
  ], [
    [ o[0], q[0], t[0] ], [ s[0],  u[0], v[0] ], [ b[0], c[0], d[0] ],
    [ w[0], x[0], y[0] ], [ e[0],  n[0], i[0] ], [ f[0], g[0], h[0] ],
    [ z[0], s[0], u[0] ], [ r[0], pu[0], a[0] ], [ j[0], k[0], m[0] ],
  ], [
    [ b[0], c[0], d[0] ], [ o[0], q[0], t[0] ], [ s[0],  u[0], v[0] ],
    [ f[0], g[0], h[0] ], [ w[0], x[0], y[0] ], [ e[0],  n[0], i[0] ],
    [ j[0], k[0], m[0] ], [ z[0], s[0], u[0] ], [ r[0], pu[0], a[0] ],
  ]]
  
  descriptions = [[
    [ s[1],  u[1], v[1] ], [ b[1], c[1], d[1] ], [ o[1], q[1], t[1] ],
    [ e[1],  n[1], i[1] ], [ f[1], g[1], h[1] ], [ w[1], x[1], y[1] ],
    [ r[1], pu[1], a[1] ], [ j[1], k[1], m[1] ], [ z[1], s[1], u[1] ],
  ], [
    [ o[1], q[1], t[1] ], [ s[1],  u[1], v[1] ], [ b[1], c[1], d[1] ],
    [ w[1], x[1], y[1] ], [ e[1],  n[1], i[1] ], [ f[1], g[1], h[1] ],
    [ z[1], s[1], u[1] ], [ r[1], pu[1], a[1] ], [ j[1], k[1], m[1] ],
  ], [
    [ b[1], c[1], d[1] ], [ o[1], q[1], t[1] ], [ s[1],  u[1], v[1] ],
    [ f[1], g[1], h[1] ], [ w[1], x[1], y[1] ], [ e[1],  n[1], i[1] ],
    [ j[1], k[1], m[1] ], [ z[1], s[1], u[1] ], [ r[1], pu[1], a[1] ],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#######################################################################################
#                                      Awasunu                                        #
#######################################################################################
# This handles basic string generation for the scripting language.                    #
#######################################################################################

macro define_method(name, content)
  def {{name}}
    {{content}}
  end
end

define_method viola, system("clear")

define_method ast(label, value), [ label, value ]
define_method       atom(value), ast(value, "#{value}")

define_method   encrire(input), puts input
define_method encrireln(input), print input

## Name of interactive terminal.
define_method documentation(title, description), encrireln("#{title} #{description}")

def sangehommage(prompt)
  print "#{prompt} "; read_line.chomp # gets.not_nil!.chomp
end

def sangehommage_single_input(prompt)
  print "#{prompt} "; gets.not_nil!.chomp.split(" ")
end


def parle_merci(prompt, output)
  print "#{prompt} "; puts output
end

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

define_method osv(o, s, v), "#{o} #{s} #{v}"
define_method sov(s, o, v), "#{s} #{o} #{v}"

define_method expression(phrase_one, phrase_two), encrire(%Q(["#{phrase_one}", "#{phrase_two}"]\n))

define_method parle_grammaire(v, o, s), encrireln("['#{v}', '#{o}','#{s}']")
define_method nihongotupelo(v, o, s), puts "['#{v}', '#{o}', '#{s}']"

## Grammar
define_method ne(first_noun, second_noun), encrireln("Ne #{first_noun} ou #{second_noun}, ")
define_method            mais(third_noun), encrireln("mais c'est #{third_noun}. ")

define_method         cette(noun, adjective), "Cette #{noun} est #{adjective}."
define_method      maisette(noun, adjective), "Maisette #{noun} est #{adjective}."
define_method  sinon(noun, adj1, adj2, adj3), "Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}."

define_method parle(phrase), encrireln(phrase)

def bokette(phrase)
  sleep(1.5)
  
  parle(phrase)
end

#def possible_state_positive(*args)
#  that_one, that_two, but_that_one, but_that_two, otherwise_one, otherwise_two = args
#
#  puts "\nPOSSIBLE STATES"
#  puts "THAT: #{that_one} est #{that_two}"
#  puts "BUT THAT: #{but_that_one} est #{but_that_two}"
#  puts "OTHERWISE: #{otherwise_one} est #{otherwise_two}"
#end

#def possible_state_negative(*args)
#  not_one, not_two, but_not_that_one, but_not_that_two, otherwise_not_one, otherwise_not_two = args
#
#  puts "\nPOSSIBLE STATES"
#  puts "NOT THAT: #{not_one} est #{not_two}"
#  puts "BUT NOT THAT: #{but_not_that_one} est #{but_not_that_two}"
#  puts "OTHERWISE NOT: #{otherwise_not_one} est #{otherwise_not_two}"
#end

def ouvert(a, b, c, d, e, g)
  File.open(a, "a") { |f|
    f.puts b
  }

  File.open(c, "a") { |f|
    f.puts d
  }

  File.open(e, "a") { |f|
    f.puts g
  }
end

def ouvert_tr(a1, a2,
              b1, b2,
              c1, c2)

  a = [a1, a2]
  b = [b1, b2]
  c = [c1, c2]

  File.open(a[0], "w") { |f|
    f.print a[1]
  }

  File.open(b[0], "w") { |f|
    f.print b[1]
  }

  File.open(c[0], "w") { |f|
    f.print c[1]
  }
end

def ouverdoc(a, b, c, d, e, g)
  document1 = <<-FIRSTDOC
  #{b}
  FIRSTDOC

  document2 = <<-SECONDDOC
  #{d}
  SECONDDOC

  document3 = <<-THIRDDOC
  #{g}
  THIRDDOC

  File.open(a, "a") { |f|
    f.puts document1
  }

  File.open(c, "a") { |f|
    f.puts document2
  }

  File.open(e, "a") { |f|
    f.puts document3
  }
end

def assign_parallel(a, b, c, d, e, f, g, h)
  ## That
  that = cette(a, b)

  ## But That
  but_that = maisette(c, d)

  ## Otherwise
  otherwise = sinon(e, f, g, h)

  ## Exclusive Otherwise
  ouvert("data/cette/cette_inventory.txt",            that,       
         "data/maisette/maisette_inventory.txt",  but_that,
         "data/sinon/sinon_inventory.txt",       otherwise)
end

def corpus_de_livretude(object, subject, verb)
  content = <<-LIVRETRUDE
  word_orders = [
    [[#{verb},   #{object}, #{subjet}],
     [#{objet},  #{subjet},   #{verb}],
     [#{subjet}, #{object}, #{object}]],

    [[#{subjet}, #{object}, #{object}],
     [#{verb},   #{object}, #{subjet}],
     [#{objet},  #{subjet},   #{verb}]],

    [[#{objet},  #{subjet},   #{verb}],
     [#{subjet}, #{object}, #{object}],
     [#{verb},   #{object}, #{subjet}]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  random_word = word_orders[cur_row][cur_col][cur_arr]
  
  print " : "
  puts random_word
  LIVRETRUDE

  File.open("msrc/corpus_de_livretrude.cr", "w") { |f|
    f.puts content
  }
end

def vexpress(*args)
  array_name, v1, o1, s1, s2, o2, v2 = args
  
  File.open("#{array_name}.cr", "w") { |f|
    f.puts <<-EXPRESSION
    require "./src/Lhacurimosa"

    #{array_name} = ["#{v1}", "#{o1}", "#{s1}", "#{s2}", "#{o2}", "#{v2}"]
    EXPRESSION
    
    f.puts "
new_index = ARGV[0].to_i
encrireln(#{array_name}[new_index])"
  }
end

################################################################################################
#                                    Recursive Awasunu                                         #
################################################################################################
# recursive_method recursive_encrire(data, outfname, outfile), "#{data}", File.open("#{outfname}.awa", "w") { |f|
  # f.puts %Q(encrire #{outfile})
# }

# recursive_method recursive_encrireln(data, outfname, outfile), "#{data}", File.open("#{outfname}.awa", "w") { |f|
#   f.puts %Q(encrireln #{outfile})
# }

## Recursive Encrire
recursive_method encriref(input, outfname), encrire(input), File.open("#{outfname}.awa", "w") { |f| f.puts "encrireln #{input}"}
obelisk_method   encrireo(input, outfname), input, obelisk("./awasunu #{outfname}")

## Recursive Rphrase
recursive_method contrastiff(objet, subjet, verb, outfname), encrire("#{objet} #{subject} #{verb}"), File.open("#{outfname}.awa", "w") { |f| puts "encrire #{object} #{subject} #{verb}." }
obelisk_method   contrastivo(objet, subjet, verb, outfname), "#{objet} #{subject} #{verb}", obelisk("#{objet} #{subjet} #{verb}")

## Recursive Grammar Patterns
recursive_method recursive_osv(o, s, v), puts("#{o} #{s} #{v}"), File.open("#{o}.awa", "w") { |f|
  f.puts %Q(encrireln #{o} #{s} #{v})
}

recursive_method recursive_vos(v, o, s), print("#{v} #{o} #{s}"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(encrireln #{v} #{o} #{s})
}

recursive_method recursive_osv(s, o, v), print("#{s} #{o} #{v}"), File.open("#{s}.awa", "w") { |f|
  f.puts %Q(encrireln #{s} #{o} #{v})
}

recursive_method recursive_ovs(o, v, s), puts("#{o} #{v} #{s}"), File.open("#{o}.awa", "w") { |f|
  f.puts %Q(encrireln #{o} #{v} #{s})
}

## This function may not need recursive osv, vos, or sov.
recursive_method recursive_expression(phrase_one, phrase_two, outfname), "#{phrase_one} #{phrase_two}", File.open("#{outfname}.awa", "w") { |f|
  f.puts %Q(encrireln #{phrase_one} #{phrase_two})
}

recursive_method recursive_pgram(v, o, s), %Q(["#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(#{v} #{o} #{s})
}

recursive_method recursive_ntupe(v, o, s), %Q("[#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(#{v} #{i} #{s})
}

################################################################################################
#                                      Recursive Grammar                                       #
################################################################################################

################################################################################################
################################################################################################
recursive_method recursive_cat(classified_cat, subject, verb, outfile), encrire("#{classified_cat} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encrireln #{classified_cat}#{subject} #{verb}" }

def chatte_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chatte_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_dog(classified_dog, subject, verb, outfile), encrire("#{classified_dog} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_dog} #{subject} #{verb}" }

def chienne_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chienne_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_gpig(classified_gpig, subject, verb, outfile), encrire("#{classified_gpig} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_dog} #{subject} #{verb}" }

def gpig_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def gpig_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_hamster(classified_hamster, subject, verb, outfile), encrire("#{classified_hamster} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_hamster} #{subject} #{verb}" }

def hamster_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def hamster_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_lapin(classified_lapin, subject, verb, outfile), encrire("#{classified_lapin} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_lapin} #{subject} #{verb}" }

def lapine_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def lapine_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_lezard(classified_lezard, subject, verb, outfile), encrire("#{classified_lezard} #{subject} #{verb}"), File.open("#{verb}.awa", "a") { |f| f.puts "#{classified_lezard} #{subject} #{verb}" }

def lezard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def lezard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_perroquet(classified_perroquet, subject, verb, outfile), encrire("#{classified_perroquet} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_perroquet} #{subject} #{verb}" }

def perroquet_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def perroquet_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_porange(classified_perroquet, subject, verb, outfile), encrire("#{classified_poisson_orange} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_poisson_orange} #{subject} #{verb}" }

def porange_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def porange_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_loup(classified_loup, subject, verb, outfile), encrire("#{classified_loup} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_loup} #{subject} #{verb}" }

def loup_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def loup_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_renard(classified_renard, subject, verb, outfile), encrire("#{classified_renard} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_renard} #{subject} #{verb}" }

def renard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def renard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_agneau(classified_agneau, subject, verb, outfile), encrire("#{classified_agneau} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_agneau} #{subject} #{verb}" }

def agneau_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def agneau_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_ane(classified_ane, subject, verb, outfile), encrire("#{classified_ane} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_agneau} #{subject} #{verb}" }

def ane_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def ane_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_canard(classified_canard, subject, verb, outfile), encrire("#{classified_canard} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_canard} #{subject} #{verb}" }

def canard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def canard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_chevre(classified_chevre, subject, verb, outfile), encrire("#{classified_chevre} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln #{classified_chevre} #{subject} #{verb}" }

def chevre_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chevre_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
#                                Conlang Specific Functionality                                #
################################################################################################
define_method      yumemoire(agent, location), "#{agent} has been transported to #{location}."
define_method    posedonokitano(agent, enemy), "#{agent} utilisent le posedonokitano et coupe le #{enemy}."
define_method sanadforutese(sender, reciever), "#{sender} encrivant un lettre pour #{reciever}."

## Describes whether something is haunted, and whether it concentrates yokai.
define_method    yokenozen(agent, location), "#{agent} est en #{location}, c'est yokenozen."
define_method hauntecabine(location, hante),  "#{location} est hante par #{hante}."

### Dialectical differences ( aka aliases )

# Climb hidden latter into cobblestone basement.
define_method entrerokku(agent, entrance, basement), "#{agent} entreroche dans #{basement}."

#### Ninhongo Parlez-Vous
define_method seibetsu(word_class), "#{word_class}"
define_method   ejento(agent_name), "#{agent_name}"
define_method  keiyoshi(adjective),  "#{adjective}"
define_method      shudai(subject),    "#{subject}"
define_method        doshi(action),     "#{action}"
define_method      fukishi(adverb),     "#{adverb}"

define_method nihongo(arg1, arg2, arg3, arg4, arg5, arg6), "#{arg1} #{arg2} #{arg3} #{arg4} #{arg5} #{arg6}"

## Japanese Contrastive
def sore(a, b)
  "Sora wa #{a} #{b}"
  
  sore = [ a, b ]
  
  File.open("data/japanese/positive/sore_a.txt", "a") { |f|
    f.puts sore[0]
  }

  File.open("data/japanese/positive/sore_b.txt", "a") { |f|
    f.puts sore[1]
  }
end

def shikashu(a, b)
  "Shikashi wa #{a} #{b}"
  
  shikashi = [ a, b ]

  File.open("data/japanese/positive/shikashi_a.txt", "a") { |f|
    f.puts shikashi[0]
  }

  File.open("data/japanese/positive/shikashi_b.txt", "a") { |f|
    f.puts shikashi[1]
  }
end

def matawa(a, b, c, d)
  "Matawa sora #{a} ni wa #{b} naishi #{c}, shikashi wa #{c}."

  matawa_nest = [ b, c ]
  matawa_est  = d

  File.open("data/japanese/positive/matawa_nest_a.txt", "a") { |f|
    f.puts matawa_nest[0]
  }

  File.open("data/japanese/positive/matawa_nest_b.txt", "a") { |f|
    f.puts matawa_nest[1]
  }
  
  File.open("data/japanese/positive/matawa_est.txt", "a") { |f|
    f.puts shikashi
  }
end

## Hanten-Ronri
def nisore(a, b)
  "Sono gyaku sora wa #{a} #{b}"
  
  nisore = [ a, b ]

  File.open("data/japanese/negative/nisore_a.txt", "a") { |f|
    f.puts nisore[0]
  }

  File.open("data/japanese/negative/nisore_b.txt", "a") { |f|
    f.puts nisore[1]
  }
end

def nishikashi(a, b)
  "Sono gyaku shikashi wa #{a} #{b}."

  nishikashi = [ a, b ]

  File.open("data/japanese/negative/matawa_nest_a.txt", "a") { |f|
    f.puts nishikashi[0]
  }

  File.open("data/japanese/negative/matawa_nest_b.txt", "a") { |f|
    f.puts nishikashi[1]
  }
end

def nimatawa(a, b, c, d)
  "Sono gyaku matawa sora #{a} wa #{b} naishi #{c}, shikashi wa #{d}"

  nimatawa_nest = [ b, c ]
  nimatawa_est  = d

  File.open("data/japanese/negative/nimatawa_nest_a.txt", "a") { |f|
    f.puts nimatawa_nest[0]
  }

  File.open("data/japanese/negative/nimatawa_nest_b.txt", "a") { |f|
    f.puts nimatawa_nest[1]
  }
  
  File.open("data/japanese/negative/nimatawa_est.txt", "a") { |f|
    f.puts nimatawa_est
  }
end

## Japanese Equivalent constraint logic
def nai(fact_one, fact_two)
  encrire("Nai [ #{fact_one} ] anata [ #{fact_two} ], ")
end

def shikasa(fact_three)
  encrire("shikashi #{fact_three}")
end

################################################################################################
#                                Who What When Where Why How                                   #
################################################################################################
#
################################################################################################
define_method nom(a),                                                 "Mes nom est #{a}."
define_method buttai(b),                                             "C'est un/une #{b}."
define_method temps(c),                                               "Le temp est #{c}."
define_method fukin(d),                                "Je suis en le voisinage de #{d}."
define_method motif(e),                                    "Mes raison pour ce est #{e}."
define_method hono(f),         "Mois methode pour le fabrication mes objectifs est #{f}."
define_method jiko(a, b, c),        "Vous avoir damande moi #{a} a propos #{b} par #{c}."

## Unite specific people at a time and place
define_method     unir(a, b, c), "Je avoir unif avec #{a} avec #{b} a #{c}."
define_method         genkei(a),        "Je suis un etudiant a propos #{a}."
define_method musee_comprime(a),                "cette musee comprime #{a}."
define_method      noremodei(a),               "Cette #{a} est noermodeios."

define_method ninom(a),                                           "Mes nom est ne #{a}."
define_method nibuttai(b),                                      "C'est non un/une #{b}."
define_method netemps(c),                                         "Le temp est ne #{c}."
define_method nifukin(d),                          "Je suis ne en le voisinage de #{d}."
define_method nemotif(e),                              "Mes raison pour ce est ne #{e}."
define_method nihono(f),   "Mois methode pour le fabrication mes objectifs est ne #{f}."

## Disunification
define_method neunir(a, b, c),            "Je ne avoir unif avec #{a} avec #{b} a #{c}."
define_method nijiko(a, b, c),  "Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
define_method     nigenkei(a),                   "Je suis ne un etudiant a propos #{a}."

################################################################################################
#                                  Weaponry And Cursed Items                                   #
################################################################################################
# This defines the DSL for giving recipients cursed items, such as when they reach specific    #
# locations in the Roguelike.                                                                  #
#                                                                                              #
# Traditionally weapon, lamp, and knob smith were considered unclean professions, usually done #
# as a public service when released from colonial prisons. Lamps in particular were the least  #
# clean do them being crafted large enough to function as solitary confinement. This meant     #
# that being able to control the power of a lamp carried connations that don't typically exist #
# in either Japanese or French culture.                                                        #
#                                                                                              #
# Do to the types of animals picked for making soap, more generally the connation of being     #
# washed with that rather than herbal soap, meant the term soap itself being a perjorative for #
# those obsessed more by appearances than being authentic. That's not to say people didn't     #
# clean, but that some soaps were seen as marked with blood.                                   #
################################################################################################
# Cursed weapon smith
define_method kurosumisu(cursed_weapon, recipient),    "#{recipient} avoir un #{cursed_weapon} par anu kurosumisu."

# Cursed lamp smith
define_method coperasumisu(cursed_lamp, recipient),    "#{recipient} avoir un #{cursed_lamp} par anu coperasumisu."

# Cursed knob smith
define_method burasusumisu(crafted_knob, recipient), "#{recipient} avoir un #{crafted_knob} par anu burasusumisu."

## Soap From Meat, ala "Ivory Soap"
define_method vanedesopu(cursed_meat, recipient),        "#{recipient} avoir un #{cursed_meat} par anu vanedesopu."

## Soap from Herbs "Herbal Soap"
define_method erobalisusopa(cursed_herb, recipient),  "#{recipient} avoir un #{cursed_herb} par ana erobalisusopa."

## Soap from books "Whitewashed books"
define_method iverisopa(cursed_book, recipient),          "#{recipient} avoir un #{cursed_book} par ana iverisopa."

################################################################################################
#                                        French Actions                                        #
################################################################################################
define_method    mange(a, b),    "Mange un #{a} en #{b}."
define_method    coupe(a, b),    "Coupe un #{a} en #{b}."
define_method   cuicre(a, b),   "Cuicre un #{a} en #{b}."
define_method baguette(a, b), "Baguette un #{a} en #{b}."

define_method guillotine(verb, subject),       "Guillotine #{verb} #{subject}."
define_method ax_head(verb, subject),    "Tete Du Crescent #{verb} #{subject}."
define_method roboparle(verb, subject),           "Le robo #{verb} #{subject}."

################################################################################################
#                                         Dream Logic                                          #
################################################################################################
# These are functions specifically in reference to dream patterns I've had when studying my    #
# my own subconscious. A clever analyst will notice that dream symbols also frequently overlap #
# with folklore symbols. The difference here is that dream symbols are treated as explicit     #
# anomalies in order to assess what the unincorporated shadow is.                              #
################################################################################################
define_method   parle_a_robo(object, subject, verb, your_name), "#{your_name}: #{subject} #{verb} #{object}"

define_method argue_purpose(a, b, c),           %Q(#{a} has elements of #{b}, but #{c} is primarily composed of #{b}.)
define_method basement_ghost(a, b, c),          %Q(#{a} checks on noise in #{b}, and invited to dinner by #{c}. Don't eat #{c}'s food or you'll never leave #{b}.)
define_method bedroom_coffee_maker(a, b),       %Q(#{a} is a room in the #{b}.)
define_method deer_attack(a, b),                %Q(Deer #{a} attack specimen #{b} as a unit of multiple deer, before #{b} wakes up.)
define_method explore_bedroom(a),               %Q(#{a} explores the current bedroom.)
define_method goat_ride_salamander(a, b, c, d), %Q(#{a} rides #{b} causing the end of the world, survived by #{c}. #{a} is theorized to eat lifestock, and is unknown whether to target #{d}.)

define_method greenhouse_path(a, b), %Q(#{a} is in the greenhouse of #{b}.)
define_method innocent_hour(a),      %Q(#{a} currently in the hour of innocense, and has tiny horns.)
define_method terror_hour(a),        %Q(#{a} currently in the hour of terror, and has long horns.)
define_method is_haunted?(a, b, c),  %Q(#{a} thinks #{c} is haunted, but not #{b}.)

define_method local_reality_zone(a, b, y1, x1, y2, x2), %Q(#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}.)
define_method specify_reality_zone(a, b, c),            %Q(#{a}, therefore {b} giving it the #{c} classification.)
define_method non_euclid(a, b),                         %Q(You can fit #{a} inside of #{b} because its exact dimensions aren't defined.)
define_method spot_rainbow_elephant(a, b),              %Q(#{a} is featured in #{b} is a rainbow elephant.)

define_method non_uniform_anomaly(a, b, c, d, e, f), %Q(You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}.)

define_method plant_evidence(a, b, c), %Q(#{a} murders student #{c}, telling #{b} they framed them for their murder.)
define_method        plant_tree(a, b), %Q(Tree #{a} is planted on plot in #{b}.)

define_method   poupee_sassoir(a),    %Q(Je avoir s'assoir en le chaise a #{a}.)
define_method nepoupee_sassoir(a), %Q(Je ne avoir s'assoir en le chaise a #{a}.)

define_method   ravenauka(a, b), %Q(#{a} is chased off to the nevermore of #{b} by a demonic raven.)
define_method      sabofensu(a), %Q(Moi ne avoir un avis de: #{a})

define_method squirrel_dog_beetle(a), %Q(#{a} whom looks like a mix of a squirrel, mangi dog, and beetle.)
define_method talk_to_tree(a, b),     %Q(#{a} chats with tree #{b} about its day.)
define_method tree_yard(a, b, c),     %Q(#{a} #{b} #{c})

define_method    try_on_shoes(a, b), %Q(#{a} tries on shoes #{b}.)
define_method     twirl_baton(a, b), %Q(#{a} twirls #{b} like a baton.)
define_method wander_halls(a, b, c), %Q(#{a} wanders from #{b} to #{c}.)

# That impression of #{a} that has wapred into a black expanse.
define_method ninoremodei(a), "Cette #{a} est anos ninoermodeios."

# forme de gravité
define_method   graviteformee(a, b), "Le #{a} es uni avec #{b}: #{a}#{b}"
define_method negraviteformee(a, b), "Le #{a} es ne uni avec #{b}: #{a}#{b}"

## Turns off the television
define_method incongruisho(a, b, c),   "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
define_method neincongruisho(a, b, c),           "The impact of #{a} from the pattern of #{b} in the context of #{c}."

def ghost_upstairs(a, b)
  ghost_states = [
    [[false, false], [false, true]],
    [[true,  false], [true,  true]],
  ]

  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_ghost = ghost_states[cur_row][cur_col][cur_arr]
  
  %Q(#{a} is the middle management of #{b}, that has two floors above #{b}, one below the surface floor: #{current_ghost})
end

################################################################################################
#                                       Ternary Logic                                          #
################################################################################################
def nombres
  bot_name = %Q(BIANCA)

  cette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has reached the upper limit in growth.) : %Q(#{bot_name}: #{x} has reached the upper limit in growth.)
  }

  maisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has reached the lower limit in growth.) : %Q(#{bot_name}: #{x} has not reached the limit in growth.)
  }

  sinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between growth intervals #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between growth intervals #{first_interval} and #{second_interval}.)
  }

  puts cette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
  puts maisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
  puts sinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
end

def neg_nombres
  bot_name = %Q(BIANCA)

  necette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has reached the upper limit in shrinkage.) : %Q(#{bot_name}: #{x} has reached the upper limit in shrinkage.)
  }

  nemaisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has reached the lower limit in shrinkage.) : %Q(#{bot_name}: #{x} has not reached the lower limit in shrinkage.)
  }

  nesinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between shrinkage intervals of #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between shrinkage intervals #{first_interval} and #{second_interval})
  }

  puts necette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
  puts nemaisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
  puts nesinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
end

def kosan
  bot_name = %Q(#{ARGV[0]}) 

  sore_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x > probability ? %Q(#{bot_name}: #{x} has reached the highest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the highest limit in probability.)
  }

  shikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x < probability ? %Q(#{bot_name}: #{x} has reached the lowest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the lowest limit in probability.)
  }

  matawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
    x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium probability.) : %Q(#{bot_name}: #{x} is not floating around medium probability.)
  }
   
  puts sore_kosan.call(ARGV[1].to_f, ARGV[2].to_f)
  puts shikashi_kosan.call(ARGV[3].to_f, ARGV[4].to_f)
  puts matawa_kosan.call(ARGV[5].to_f, ARGV[6].to_f, ARGV[7].to_f)
end

def nikosan
  bot_name = %Q(#{ARGV[0]})

  nisore_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x > probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
  }

  nishikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x < probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
  }

  nimatawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
    x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium negative probability.) : %Q(#{bot_name}: #{x} is not floating around medium negative probability.)
  }

  puts nisore_kosan.call(ARGV[1].to_f, ARGV[2].to_f)
  puts nishikashi_kosan.call(ARGV[3].to_f, ARGV[4].to_f)
  puts nimatawa_kosan.call(ARGV[5].to_f, ARGV[6].to_f, ARGV[7].to_f)
end

################################################################################################
#                                         Risuto Search                                        #
################################################################################################
def risuto(search_length, a, b, c)
  search_space = ARGV[0].to_i

  a = ARGV[1]
  b = ARGV[2]
  c = ARGV[3]

  matrix = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],

    [[c, c, c],
     [c, c, c],
     [c, c, c]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  search_space.times do
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
  
    current_item = matrix[cur_row][cur_col][cur_arr]

    encrireln(current_item)
  end
end

## This brings fortune telling in as a datatype rather than constantly using statistics.
def fortune(*kwargs)
  a, b, c = kwargs

  matrix = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],

    [[c, c, a],
     [c, c, b],
     [c, c, c]],
  ]

  row_options = [-1, -2, -3]
  col_options = [-1, -2, -3]
  arr_options = [-1, -2, -3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
 
  current_value = matrix[cur_row][cur_col][cur_arr]
  current_value
end

def hfortune(*kwargs)
  a, b, c = kwargs

  matrix = [
    [[[a, a], [a, a], [a, a]],
     [[a, b], [a, a], [b, a]],
     [[a, c], [a, a], [c, a]]],

    [[[b, a], [b, b], [a, b]],
     [[b, b], [b, b], [b, b]],
     [[b, c], [b, b], [c, b]]],

    [[[c, a], [c, c], [a, c]],
     [[c, b], [c, c], [b, c]],
     [[c, c], [c, c], [c, c]]],
  ]

  row_options = [-1, -2, -3]
  col_options = [-1, -2, -3]
  arr_options = [-1, -2, -3]
  lim_options = [-1, -2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  cur_lim = lim_options.sample
 
  current_value = matrix[cur_row][cur_col][cur_arr][cur_lim]
  current_value
end

def tfortune(*args)
  a, e, i, m, q, u, y,
  b, d, f, h, j, l, n,
  p, r, t, v, x, z, c,
        g, k, o, s, w, z = args

  matrix = [
    [[a, e, i],
     [m, q, u],
     [y, b, d]],

    [[f, h, j],
     [l, n, p],
     [r, t, v]],

    [[x, z, c],
     [g, k, o],
     [s, w, z]],
  ]

  row_options = [-1, -2, -3]
  col_options = [-1, -2, -3]
  arr_options = [-1, -2, -3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
 
  current_value = matrix[cur_row][cur_col][cur_arr]
  current_value
end

## Implementation Examples For Testing
def fexample
  label       = fortune(ARGV[0], ARGV[1], ARGV[2])
  description = fortune(ARGV[3], ARGV[4], ARGV[5])

  low    = ARGV[6].to_f
  medium = ARGV[7].to_f
  high   = ARGV[8].to_f

  initial_estimate = fortune(low, medium, high)
  second_estimate  = fortune(low, medium, high)

  puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])
end

def fhexample
  label       = fortune(ARGV[0], ARGV[1], ARGV[2])
  description = fortune(ARGV[3], ARGV[4], ARGV[5])

  low    = ARGV[6].to_f
  medium = ARGV[7].to_f
  high   = ARGV[8].to_f

  initial_estimate = hfortune(low, medium, high)
  second_estimate  = hfortune(low, medium, high)

  puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])
end

################################################################################################
#                                          Obelisk                                             #
################################################################################################
def obelisk(old_data)
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").shuffle
  size_limit    = old_graveyard.size.to_i
  index = 0

  File.open("memoricimetiere/urn.txt", "w") { |f|
    f.puts old_data
      
    size_limit.times do
      f.puts old_graveyard[index]
 
      index = index + 1
    end
  }
end

def obelisk_awa(old_data)
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").shuffle
  size_limit    = old_graveyard.size.to_i
  index = 0

  File.open("memoricimetiere/urn.txt", "w") { |f|
    f.puts "encrire #{old_data}"
      
    size_limit.times do
      f.puts old_graveyard[index]
 
      index = index + 1
    end
  }
end

def three_plot_burial(father, mother, child)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_children = File.readlines("graveyard/family/child.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/child.txt", "w") { |f|
    f.puts child
    f.puts buried_children
  }
end

def four_plot_burial(father, mother, brother, sister)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_brothers = File.readlines("graveyard/family/brother.txt").uniq.sort
  buried_sisters  = File.readlines("graveyard/family/sister.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/brother.txt", "w") { |f|
    f.puts brother
    f.puts buried_brothers
  }

  File.open("graveyard/family/sister.txt", "w") { |f|
    f.puts sister
    f.puts buried_sisters
  }
end

def scatter_ashes
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_graveyard[index]
  
    index = index + 1
  end
end

def scatter_and_execute
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    system(old_graveyard[index])
  
    index = index + 1
  end
end

def scash_liminal(a1, a2, b1, b2, c1, c2, search_space)
  search_space.times do
    hyper_statistics(a1, a2,
                     b1, b2,
                     c1, c2)
                   
    dynamic_reward_allocation

    current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
    current_information = File.read("data/statistics/label/current_information.txt")

    if current_probability > 0.999999999999999999
      current_probability = 0.9 / current_probability
    end
	
    obelisk(current_information)

    scatter_ashes
  end
end

def scatter_three_ashes
  old_fathers  = File.read_lines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.read_lines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_children = File.read_lines("graveyard/family/child.txt").uniq.sort.shuffle

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters childrens ashes in the wind.
  size_limit    = old_children.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_children[index]
  
    index = index + 1
  end
end

def scatter_four_ashes
  old_fathers  = File.read_lines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.read_lines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_brothers = File.read_lines("graveyard/family/brother.txt").uniq.sort
  old_sister   = File.read_lines("graveyard/family/sister.txt").uniq.sort

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters brothers ashes in the wind.
  size_limit    = old_brothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_brothers[index]
  
    index = index + 1
  end

  ## Scatters sisters ashes in the wind.
  size_limit    = old_sister.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_sister[index]
  
    index = index + 1
  end
end

############################################################################################################
#                                            Maisettemurale                                                #
############################################################################################################
# These commands are for analyzing murals on walls in different parts of the game world.                   #
############################################################################################################
# Analyze painting or mural
define_method muralebunseki(a, b), "Vous avoir analyse #{a} en repos en #{b}."

# Salut and Gaka, or salute the painter, or specifically their painting.
define_method salugaka(a, b), "Vous avoir salute #{a} en photo de #{b}."

def quoi_est_le_poupee(cette, maisette, sinon)
  c = cette("poupee", "victorienne")
  d = maisette("poupee", "barbie")
  e = sinon("poupee", "victorienne", "barbie", "blyth")

  "Est le #{a} avoir un seance en #{b} victorienne? #{c} #{d} #{e}"
end

def est_nom_fausse(a, b, c, d)
  nom_de_plumes = [
    [[a, a, a], [a, a, b], [a, a, c]],
    [[b, b, s], [b, b, b], [b, b, c]],
    [[c, c, a], [c, c, b], [c, c, c]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  new_name = nom_de_plumes[cur_row][cur_col][cur_arr]

  if new_name == d
    "Checking if that Dolly's name might be fake: #{ner_name}. All thing accorded..."   
  else
    "Checking if that Dolly's name might be fake: #{ner_name}. This name seems to be not legitimate."
  end
end

#################################################################################################################
#                                           Maisette De Relatif                                                 #
#################################################################################################################
# This section for analyzing the relationship between individuals and their relative assessment how likely they #
# are to be estranged from each other, or distance do to some other issue.                                      #
#################################################################################################################
## equation de reduction
define_method reduce_equation(a, b, c), "The equation of #{a}, can be reduced down to #{b} and #{c}."

## which_stopped_talking / qui_a_surpasse_les_conversations
define_method qusurp(a, b), "Do #{a} stop talking before #{b}, or #{b} stop talking before #{a}>"

## which_died_first?
define_method  qui_est_mort_en_premier(a, b), "Do #{a} die before #{b}, or #{b} before #{a}>"

## which relative?
define_method quel_relatif(a), "#{a}"

## is_relative_estranged est relative eloigne
define_method est_relative_eloigne(a, b, c), "Is the relative of #{a} estranged from #{b}?: #{c}"

## is_relative_dead?
define_method est_relativement_mort(a, b, c), "Did #{a} find out that the relative #{b} has died?: #{c}"

## qui a surpassé les conversations / Who surpassed conversations?
define_method qui_a_surpasse_les_conversations(a, b), "Did #{a} stop talking before #{b}, or #{b} stop talking before #{a}?"

## qui est mort en premier
define_method qui_est_mort_en_premier?(a, b), "Did #{a} die before #{b}, or #{b} before #{a}?"

## quel relatif
define_method quel_relatif(a), "#{a}"

## est relative eloigne
define_method est_relative_eloigne?(a, b, c), "Is the relative of #{a} estranged from #{b}?: #{c}"

## est relativement mort? 
define_method est_relativement_mort?(a, b, c), "Did #{a} find out that the relative #{b} has died?: #{c}"

#######################################################################################
#                                    Medusahoseki                                     #
#######################################################################################
def proximity_de_medusahoseki(a, b)
  maximum_distance     = b
  distance_probability = a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation.round
  
  "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
end

def proximity_de_nemedusahoseki(a, b)
  maximum_distance     = b
  distance_probability = 1 - a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation.round
  
  "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
end

def proximity_de_memorie(a)
  year_period = 12
  
  calculation = 12 - ( 12 * a )
  calculation = calculation.round
  
  "This memory was from a prior #{calculation} year period"
end

def mperiod_sprox(a, b)
  "#{a} #{b.upcase}"
end

#################################################################################################################
#                                           Scorecard Et Livretude                                              #
#################################################################################################################
def scorecard(rock, paper, scissors)
  max_rock     = 100
  max_paper    = 100
  max_scissors = 100

  final_rock     = rock     / max_rock
  final_paper    = paper    / max_paper
  final_scissors = scissors / max_scissors
  
  score_card = <<-TOTAL
  (require "NeMais")
  
  (defun scorecard (frock fpaper fscissors)
    (setq rock_score         frock)
    (setq paper_score       fpaper)
    (setq scissors_score fscissors)
    
    (princ "\nROCK SCORES\n")
    (princ (sore rock_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi rock_score  " You achieved the medicore paper score."       " You never achieved a medicore paper score."))
    (princ (matawa rock_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))

    (princ "\nPAPER SCORES\n")
    (princ (sore paper_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi paper_score  " You achieved the maximum paper score."       " You never achieved a paper score."))
    (princ (matawa paper_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))

    (princ "\nSCISSORS SCORES\n")
    (princ (sore scissors_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi scissors_score  " You achieved the medicore paper score."       " You never achieved a medicore paper score."))
    (princ (matawa scissors_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))
  )
  
  (scorecard #{final_rock} #{final_paper} #{final_scissors})
  TOTAL
  
  File.open("lisp/scorecard.lisp", "w") { |f|
    f.puts score_card
  }
end

#################################################################################################################
#                                        Expressions That Transpile To Lisp                                     #
#################################################################################################################
# This section specializes in creating functions whose primary purpose is to transpile to valid Lisp exp as a   #
# subset of Awasunu. This will gradually be expanded on, and may end up becoming its on domain specific dialect #
# within the Awasunu ecosystems.                                                                                #
#################################################################################################################
def lisp_statements(*args)
  function, fcall, outfname = args

  do_func = <<-LFUNCTION
  #{function}
  LFUNCTION

  fun_call = <<-LFCALL
  #{fcall}
  LFCALL

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts do_func
    f.puts " "
    f.puts fun_call
  }
end

def ne_lisp(first_noun, second_noun, outfname)
  negations = <<-NEGATIONS
  require "lisp/intermediate/negative_constraints.lisp"

  (ne #{first_noun}, #{second_noun})
  NEGATIONS

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts negations
  }
end

def mais_lisp(third_noun, outfname)
  confirmations = <<-CONFIRMATION
  (mais "third_noun}")
  CONFIRMATION

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts confirmations
  }
end

def estimate_lisp(a1, a2, b1, b2, c1, c2, lisp_name)
  data = <<-DATASET
  ; Sets the random state
  (setq *random-state* (make-random-state t))

  (defvar y (random 3))

  ; Give me a probability
  (defvar probability (random 0.99999999))

  (defvar a y)
  (defvar b y)

  (princ "[ ")
  (princ (nth a `("#{a1}", "#{b1}", "#{c1}")))
  (princ " ")

  (princ (nth b `("#{a2}", "#{b2}", "#{c2}")))

  (princ " ")
  (princ probability)
  (princ " ]")
  DATASET

  File.open("#{lisp_name}.lisp", "w") { |f|
    f.puts data
  }

  File.open("#{lisp_name}.sh", "a") { |f|
    f.puts "clisp #{lisp_name}.lisp"
  }
end

#######################################################################################
#                                        REPL                                         #
#######################################################################################
def awasunu_repl
  file_name = ARGV[0]

  read_file = File.read_lines(file_name)

  total_lines = read_file.size.to_i
  index       = 0

  if total_lines > 0
    total_lines.times do
      current_line = read_file[index]
  
      current_line = current_line.tr ")", ""  
      current_line = current_line.tr "(", ""
      current_line = current_line.tr %q("), %q()

      tokens       = current_line.split(/ /)
      total_tokens = tokens.size.to_i
      token_index  = 0
    
      ## The actual tokens you'll be parsing.
      parsed_tokens = [] of String
    
      if total_tokens > 0

        total_tokens.times do
          current_token = tokens[token_index]
 
          parsed_tokens = parsed_tokens.push(current_token)
    
          token_index = token_index + 1
        end
        
        ###################################################################################################
        #                                         Document Parsing                                        #
        ###################################################################################################  
        if    parsed_tokens[0] == "encrire"
          new_index  = 0
          size_limit = parsed_tokens.size.to_i
          
          size_limit.times do
            new_output = parsed_tokens[new_index].tr "'", ""
            
            if new_output == "encrire"
            else
              print "#{new_output} "
            end
            
            new_index = new_index + 1
          end
        elsif parsed_tokens[0] == "encrireln"
          new_index  = 0
          size_limit = parsed_tokens.size.to_i
          
          size_limit.times do
            new_output = parsed_tokens[new_index].tr "'", ""
            
            if new_output == "encrireln"
            else
              print "#{new_output} "
            end
            
            new_index = new_index + 1
          end
          
          puts " "
        elsif parsed_tokens[0] == "#"
        elsif parsed_tokens[0] == "--"
        elsif parsed_tokens[0] == ";"
        elsif parsed_tokens[0] == ""
        elsif parsed_tokens[0] == "expression"
          expression(osv(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3]),
          sov(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6]))
                          
        elsif parsed_tokens[0] == "parle_grammaire"
          puts parle_grammaire(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "nihongotupelo"
          puts puts nihongotupelo(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "ne_mais"
          print ne(parsed_tokens[1], parsed_tokens[2]); puts mais(parsed_tokens[3])
        elsif parsed_tokens[0] == "cemase"
          puts cette(parsed_tokens[0],    parsed_tokens[1])
          puts maisette(parsed_tokens[2], parsed_tokens[3])
          puts sinon(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6], parsed_tokens[7])
        elsif parsed_tokens[0] == "bghost"
          puts basement_ghost(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "bcmaker"
          puts bedroom_coffee_maker(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "vexpress"
          vexpress(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4],
                                     parsed_tokens[5], parsed_tokens[6], parsed_tokens[7])
        elsif parsed_tokens[0] == "fort" # Negative indexing

          label       = fortune(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
          description = fortune(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6])

          low    = parsed_tokens[7].to_f
          medium = parsed_tokens[8].to_f
          high   = parsed_tokens[9].to_f

          initial_estimate = fortune(low, medium, high)
          second_estimate  = fortune(low, medium, high)

          puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])

        elsif parsed_tokens[0] == "hfort"

          label       = hfortune(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
          description = hfortune(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6])

          low    = parsed_tokens[7].to_f
          medium = parsed_tokens[8].to_f
          high   = parsed_tokens[9].to_f

          initial_estimate = hfortune(low, medium, high)
          second_estimate  = hfortune(low, medium, high)

          puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])
        elsif parsed_tokens[0] == "tfort"
          search_space = parsed_tokens[1].to_i

          search_space.times do
            a = label_one = tfortune( parsed_tokens[2],  parsed_tokens[3],  parsed_tokens[4],
                                      parsed_tokens[5],  parsed_tokens[6],  parsed_tokens[7],
                                      parsed_tokens[8],  parsed_tokens[9], parsed_tokens[10],
                                     parsed_tokens[11], parsed_tokens[12], parsed_tokens[13],
                                     parsed_tokens[14], parsed_tokens[15], parsed_tokens[16],
                                     parsed_tokens[17], parsed_tokens[18], parsed_tokens[19],
                                     parsed_tokens[20], parsed_tokens[21], parsed_tokens[22],
                                     parsed_tokens[23], parsed_tokens[24], parsed_tokens[25],
                                     parsed_tokens[26], parsed_tokens[27], parsed_tokens[28])

            b = probabilities = tfortune(0.005,       0.014296875, 0.023593750,
                                         0.042187500, 0.051484375, 0.060781250,
                                         0.070078125, 0.072402344, 0.074726563,
                                         0.0793750,   0.119062500, 0.138906250,
                                         0.15375,     0.228125000, 0.265312500,
                                         0.3025,      0.339687500, 0.376875000,
                                         0.45125,     0.488125000, 0.525000000,
                                         0.60,        0.795000000, 0.892500000,
                                         0.94125,     0.965625000, 0.990000000)

            t_list = [a, b]

            print "[#{t_list[0]}, #{t_list[1]}]\n"
          end
        elsif parsed_tokens[0] == "pnemais"
          2.times do
            get_statistics(parsed_tokens[1], "#{ne(parsed_tokens[2], parsed_tokens[3])} #{mais(parsed_tokens[4])}",
                           parsed_tokens[5], "#{ne(parsed_tokens[6], parsed_tokens[7])} #{mais(parsed_tokens[8])}",
                           parsed_tokens[9], "#{ne(parsed_tokens[10], parsed_tokens[11])} #{mais(parsed_tokens[12])}")
                 
            dynamic_mode_switcher

            current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
            current_information = File.read("data/statistics/label/current_information.txt")

            if current_probability > 0.999999999999999999
              current_probability = 0.9 / current_probability
            end

            puts "[ #{current_information}, #{current_probability} ] ".tr "'", ""
          end
        elsif parsed_tokens[0] == "hlim"
          search_space      = parsed_tokens[1].to_i

          search_space.times do
            hyper_statistics(parsed_tokens[2], "#{parsed_tokens[3]}",
                             parsed_tokens[4], "#{parsed_tokens[5]}",
                             parsed_tokens[6], "#{parsed_tokens[7]}")
                   
            dynamic_mode_switcher

            current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
            current_information = File.read("data/statistics/label/current_information.txt")

            if current_probability > 0.999999999999999999
              current_probability = 0.9 / current_probability
            end

            puts "[ #{current_information} ] ".tr "'", ""
            system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
          end
        elsif parsed_tokens[0] == "bifurcate"
          search_space      = parsed_tokens[1].to_i

          a = 10

          search_space.times do
            bifurcate_statistics(parsed_tokens[2], "#{parsed_tokens[3]}", "#{parsed_tokens[4]}",
                                 parsed_tokens[5], "#{parsed_tokens[6]}", "#{parsed_tokens[7]}",
                                 parsed_tokens[8], "#{parsed_tokens[9]}", "#{parsed_tokens[a]}")
                   
            dynamic_mode_switcher

            current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
            current_information = File.read("data/statistics/label/current_information.txt")

            if current_probability > 0.999999999999999999
              current_probability = 0.9 / current_probability
            end

            puts "[ #{current_information} ] ".tr "'", ""
            system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
          end
        elsif parsed_tokens[0] == "lintree"
          ## General Family Dynasty Information
          nation_state       = parsed_tokens[0]
          family_lineage     = parsed_tokens[1]
          family_description = parsed_tokens[2]
          years_historical   = parsed_tokens[3]
          years_current      = parsed_tokens[4]

          ## Founding Generation
          p_name = parsed_tokens[5]
          m_name = parsed_tokens[6]

          ## First Generation Hemato
          g1_name1 = parsed_tokens[7]
          g1_name2 = parsed_tokens[8]
          g1_name3 = parsed_tokens[9]

          ## Second Generation Hemato
          g2_name1 = parsed_tokens[10]
          g2_name2 = parsed_tokens[11]
          g2_name3 = parsed_tokens[12]
          g2_name4 = parsed_tokens[13]
          g2_name5 = parsed_tokens[14]

          ## Third Generation Hemato
          g3_name1 = parsed_tokens[15]
          g3_name2 = parsed_tokens[16]
          g3_name3 = parsed_tokens[17]
          g3_name4 = parsed_tokens[18]
          g3_name5 = parsed_tokens[19]

          ## Remaining Survivor Ehena Descendant
          e_name1 = parsed_tokens[20]
          e_name2 = parsed_tokens[21]

          BequestLineage::FamilyTree.choose_name(nation_state,     family_lineage, family_description,
	                                             years_historical,  years_current,             p_name,
	                                             m_name,                 g1_name1,           g1_name2,
	                                             g1_name3,               g2_name1,           g2_name2,
	                                             g2_name3,               g2_name4,           g2_name5,
	                                             g3_name1,               g3_name2,           g3_name3,
	                                             g3_name4,               g3_name5,            e_name1,
	                                                                                        e_name2)
	elsif parsed_tokens[0] == "slim"
          scash_liminal(parsed_tokens[1].to_s, parsed_tokens[2].to_s,
		        parsed_tokens[3].to_s, parsed_tokens[4].to_s,
			parsed_tokens[5].to_s, parsed_tokens[6].to_s,
					       parsed_tokens[7].to_i)

        elsif parsed_tokens[0] == "dmem"
          search_space = parsed_tokens[1].to_i

          puts "[ Nom, Buttai, Temps ]"
          search_space.times do
            hyper_statistics(parsed_tokens[2], nom(parsed_tokens[3]),
                             parsed_tokens[4], buttai(parsed_tokens[5]),
                             parsed_tokens[6], temps(parsed_tokens[7]))

            dynamic_mode_switcher

            current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
            current_information = File.read("data/statistics/label/current_information.txt")

            if current_probability > 0.999999999999999999
              current_probability = 0.9 / current_probability
            end

            puts "[ #{current_information} ] ".tr "'", ""
            system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
          end

          puts "[ Fukin, Motif, Hono ]"
          search_space.times do
            hyper_statistics(parsed_tokens[2], fukin(parsed_tokens[3]),
                             parsed_tokens[4], motif(parsed_tokens[5]),
                             parsed_tokens[6], hono(parsed_tokens[7]))

            dynamic_mode_switcher

            current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
            current_information = File.read("data/statistics/label/current_information.txt")

            if current_probability > 0.999999999999999999
              current_probability = 0.9 / current_probability
            end

            puts "[ #{current_information} ] ".tr "'", ""
            system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
          end
	########################################################################################################
        #                                              Recursive                                               #
        ########################################################################################################
        # Recursive functionality that allows for writing Awa files back to Awa as output.                     #
	########################################################################################################
        elsif parsed_tokens[0] == "mperiod"					
          puts "COLD MAP"
          puts mperiod_sprox(proximity_de_medusahoseki(parsed_tokens[1].to_f, parsed_tokens[2].to_i), proximity_de_memorie(parsed_tokens[3].to_f))

          puts "HEAT MAP"
          puts mperiod_sprox(proximity_de_nemedusahoseki(parsed_tokens[4].to_f, parsed_tokens[5].to_i), proximity_de_memorie(parsed_tokens[6].to_f))
	  elsif parsed_tokens[0] == "espace"
          puts " "
        elsif parsed_tokens[0] == "lstate"
          lisp_statements(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "nlisp"
          ne_lisp(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "mlisp"
          mais_lisp(parsed_tokens[0], parsed_tokens[1])

        ########################################################################################################
        #                                   Data Recycling And Memory Management                               #
        ########################################################################################################
        # Focus on preserving knowledge through burial urns inside of obelisks. This started out as an         #
        # esolang, and gradually became more useful for real world problems, such as the issue of catestrophic #
        # forgetting in AI models.                                                                             #
        ########################################################################################################
        elsif parsed_tokens[0] == "obelisk1"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
        elsif parsed_tokens[0] == "obelisk2"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
        elsif parsed_tokens[0] == "obelisk3"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
        elsif parsed_tokens[0] == "obelisk4"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
          Obelisk::DataRecycling.obelisk(parsed_tokens[4])
        elsif parsed_tokens[0] == "obelisk5"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
          Obelisk::DataRecycling.obelisk(parsed_tokens[4])
          Obelisk::DataRecycling.obelisk(parsed_tokens[5])
        elsif parsed_tokens[0] == "obelisk6"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
          Obelisk::DataRecycling.obelisk(parsed_tokens[4])
          Obelisk::DataRecycling.obelisk(parsed_tokens[5])
          Obelisk::DataRecycling.obelisk(parsed_tokens[6])
        elsif parsed_tokens[0] == "obelisk7"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
          Obelisk::DataRecycling.obelisk(parsed_tokens[4])
          Obelisk::DataRecycling.obelisk(parsed_tokens[5])
          Obelisk::DataRecycling.obelisk(parsed_tokens[6])
          Obelisk::DataRecycling.obelisk(parsed_tokens[7])
        elsif parsed_tokens[0] == "obelisk8"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
          Obelisk::DataRecycling.obelisk(parsed_tokens[4])
          Obelisk::DataRecycling.obelisk(parsed_tokens[5])
          Obelisk::DataRecycling.obelisk(parsed_tokens[6])
          Obelisk::DataRecycling.obelisk(parsed_tokens[7])
          Obelisk::DataRecycling.obelisk(parsed_tokens[8])
        elsif parsed_tokens[0] == "obelisk9"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
          Obelisk::DataRecycling.obelisk(parsed_tokens[4])
          Obelisk::DataRecycling.obelisk(parsed_tokens[5])
          Obelisk::DataRecycling.obelisk(parsed_tokens[6])
          Obelisk::DataRecycling.obelisk(parsed_tokens[7])
          Obelisk::DataRecycling.obelisk(parsed_tokens[8])
        elsif parsed_tokens[0] == "obelisk10"
          Obelisk::DataRecycling.obelisk(parsed_tokens[1])
          Obelisk::DataRecycling.obelisk(parsed_tokens[2])
          Obelisk::DataRecycling.obelisk(parsed_tokens[3])
          Obelisk::DataRecycling.obelisk(parsed_tokens[4])
          Obelisk::DataRecycling.obelisk(parsed_tokens[5])
          Obelisk::DataRecycling.obelisk(parsed_tokens[6])
          Obelisk::DataRecycling.obelisk(parsed_tokens[7])
          Obelisk::DataRecycling.obelisk(parsed_tokens[8])
          Obelisk::DataRecycling.obelisk(parsed_tokens[9])
        elsif parsed_tokens[0] == "scash"
          Obelisk::DataRecycling.scatter_ashes

        ########################################################################################################
        #                                      Self Parsing Awasunu Code                                       #
        ########################################################################################################
        # This section of the interpreter specializes in generating Awasunu code itself, for Awasunu to parse. #
        # It does not necessarily replace learning LLVM in order to develop a hosting version of Awasunu in    #
        # LLVM in parallel with the Crystal hosted version. The aim of the language isn't total independance   #
        # but some self-interpreting and compiling abilities.                                                  #
        ########################################################################################################
        elsif parsed_tokens[0] == "samu"
          sob = Samu::Cemotu::Objet
          ssu = Samu::Cemotu::Sujet
          snu = Samu::Numotu::Phrase


          a = Samu::LType::List.assert(sob.fruit(parsed_tokens[1]), snu.express(sob.fruit(parsed_tokens[2]),  ssu.moi(parsed_tokens[3]),  parsed_tokens[4]))
          b = Samu::LType::List.assert(sob.fruit(parsed_tokens[5]), snu.express(sob.fruit(parsed_tokens[6]),  ssu.moi(parsed_tokens[7]),  parsed_tokens[8]))
          c = Samu::LType::List.assert(sob.fruit(parsed_tokens[9]), snu.express(sob.fruit(parsed_tokens[10]), ssu.moi(parsed_tokens[11]), parsed_tokens[12]))

          print "hlim 2"

          print a
          print b
          print c

          File.open("samu.awa", "w") { |f|
            f.puts "hlim 2#{a}#{b}#{c}"
          }
        elsif parsed_tokens[0] == "hikasu"
          hob = Hikasu::Cemotu::Objet
          hsu = Hikasu::Cemotu::Sujet
          hnu = Hikasu::Numotu::Phrase


          a = Samu::LType::List.assert(hob.fruit(parsed_tokens[1]), hnu.express(hob.fruit(parsed_tokens[2]),  hsu.moi(parsed_tokens[3]),  parsed_tokens[4]))
          b = Samu::LType::List.assert(hob.fruit(parsed_tokens[5]), hnu.express(hob.fruit(parsed_tokens[6]),  hsu.moi(parsed_tokens[7]),  parsed_tokens[8]))
          c = Samu::LType::List.assert(hob.fruit(parsed_tokens[9]), hnu.express(hob.fruit(parsed_tokens[10]), hsu.moi(parsed_tokens[11]), parsed_tokens[12]))

          print "hlim 2"

          print a
          print b
          print c

          File.open("hikasu.awa", "w") { |f|
            f.puts "hlim 2#{a}#{b}#{c}"
          }
        elsif parsed_tokens[0] == "sanu"
          sanob = Sanu::Cemotu::Objet
          sansu = Sanu::Cemotu::Sujet
          sannu = Sanu::Numotu::Phrase


          a = Samu::LType::List.assert(sanob.fruit(parsed_tokens[1]), sannu.express(sanob.fruit(parsed_tokens[2]),  sansu.moi(parsed_tokens[3]),  parsed_tokens[4]))
          b = Samu::LType::List.assert(sanob.fruit(parsed_tokens[5]), sannu.express(sanob.fruit(parsed_tokens[6]),  sansu.moi(parsed_tokens[7]),  parsed_tokens[8]))
          c = Samu::LType::List.assert(sanob.fruit(parsed_tokens[9]), sannu.express(sanob.fruit(parsed_tokens[10]), sansu.moi(parsed_tokens[11]), parsed_tokens[12]))

          print "hlim 2"

          print a
          print b
          print c

          File.open("sanu.awa", "w") { |f|
            f.puts "hlim 2#{a}#{b}#{c}"
          }
        elsif parsed_tokens[0] == "chanu"
          chanob = Chanu::Cemotu::Objet
          chansu = Chanu::Cemotu::Sujet
          channu = Chanu::Numotu::Phrase


          # chanu :le_pomme pomme je mangeon :le_banane banane je mangeon :le_citrone citrone je mangeon

          a = Chanu::LType::List.assert(chanob.fruit(parsed_tokens[1]), channu.express(chanob.fruit(parsed_tokens[2]),  chansu.moi(parsed_tokens[3]),  parsed_tokens[4]))
          b = Chanu::LType::List.assert(chanob.fruit(parsed_tokens[5]), channu.express(chanob.fruit(parsed_tokens[6]),  chansu.moi(parsed_tokens[7]),  parsed_tokens[8]))
          c = Chanu::LType::List.assert(chanob.fruit(parsed_tokens[9]), channu.express(chanob.fruit(parsed_tokens[10]), chansu.moi(parsed_tokens[11]), parsed_tokens[12]))

          print "hlim 2"

          print a
          print b
          print c

          File.open("chanu.awa", "w") { |f|
            f.puts "hlim 2 #{a[0]} #{a[1]} #{b[0]} #{b[1]} #{c[0]} #{c[1]}"
          }

        ##########################################################################################################
        #                                        Send Envoy And Delete Taco                                      #
        ##########################################################################################################
        # Envoys will be sent and deleted like Tacos in order to save on system memory. These serve as temporary #
        # points of life where the program lives long enough to be interpreted, but dies when the process dies   #
        # including the code generator, while retaining the interpreter that has the capability of generating    #
        # said code.                                                                                             #
        ##########################################################################################################
        elsif parsed_tokens[0] == "sevtaco"
          if    parsed_tokens[1] == "samu"
            sob = Samu::Cemotu::Objet
            ssu = Samu::Cemotu::Sujet
            snu = Samu::Numotu::Phrase


            a = Samu::LType::List.assert(sob.fruit(parsed_tokens[1]), snu.express(sob.fruit(parsed_tokens[2]),  ssu.moi(parsed_tokens[3]),  parsed_tokens[4]))
            b = Samu::LType::List.assert(sob.fruit(parsed_tokens[5]), snu.express(sob.fruit(parsed_tokens[6]),  ssu.moi(parsed_tokens[7]),  parsed_tokens[8]))
            c = Samu::LType::List.assert(sob.fruit(parsed_tokens[9]), snu.express(sob.fruit(parsed_tokens[10]), ssu.moi(parsed_tokens[11]), parsed_tokens[12]))

            print "hlim 2"

            print a
            print b
            print c

            File.open("samu.awa", "w") { |f|
              f.puts "hlim 2#{a}#{b}#{c}"
            }

            system("awasunu sama.awa; rm sama.awa")
          elsif parsed_tokens[1] == "hikasu"
            hob = Hikasu::Cemotu::Objet
            hsu = Hikasu::Cemotu::Sujet
            hnu = Hikasu::Numotu::Phrase


            a = Samu::LType::List.assert(hob.fruit(parsed_tokens[1]), hnu.express(hob.fruit(parsed_tokens[2]),  hsu.moi(parsed_tokens[3]),  parsed_tokens[4]))
            b = Samu::LType::List.assert(hob.fruit(parsed_tokens[5]), hnu.express(hob.fruit(parsed_tokens[6]),  hsu.moi(parsed_tokens[7]),  parsed_tokens[8]))
            c = Samu::LType::List.assert(hob.fruit(parsed_tokens[9]), hnu.express(hob.fruit(parsed_tokens[10]), hsu.moi(parsed_tokens[11]), parsed_tokens[12]))

            print "hlim 2"

            print a
            print b
            print c

            File.open("hikasu.awa", "w") { |f|
              f.puts "hlim 2#{a}#{b}#{c}"
            }

            system("awasunu sama.awa; rm hikasu.awa")
          elsif parsed_tokens[2] == "sanu"
            sanob = Sanu::Cemotu::Objet
            sansu = Sanu::Cemotu::Sujet
            sannu = Sanu::Numotu::Phrase


            a = Samu::LType::List.assert(sanob.fruit(parsed_tokens[1]), sannu.express(sanob.fruit(parsed_tokens[2]),  sansu.moi(parsed_tokens[3]),  parsed_tokens[4]))
            b = Samu::LType::List.assert(sanob.fruit(parsed_tokens[5]), sannu.express(sanob.fruit(parsed_tokens[6]),  sansu.moi(parsed_tokens[7]),  parsed_tokens[8]))
            c = Samu::LType::List.assert(sanob.fruit(parsed_tokens[9]), sannu.express(sanob.fruit(parsed_tokens[10]), sansu.moi(parsed_tokens[11]), parsed_tokens[12]))

            print "hlim 2"

            print a
            print b
            print c

            File.open("sanu.awa", "w") { |f|
              f.puts "hlim 2#{a}#{b}#{c}"
            }

            system("awasunu sama.awa; rm sanu.awa")
          else
            puts "Error: No envoy was sent."
          end
        else
          current_token = tokens[token_index]
        
          puts current_token
        end
  
        index = index + 1
      end
    end
  else
    current_line = read_file[index]
   
    puts current_line
  end
end

def parse_lisp(file_name)  
  system("clisp lisp/parsed_map.lisp > scripts/#{file_name}.awa")
  
  system("./awasunu scripts/#{file_name}.awa")
end

def to_lisp(expression_name, active_file)
  file_name = active_file # ARGV[0]

  read_file = File.read_lines(file_name)

  total_lines = read_file.size.to_i

  total_lines = read_file.size.to_i
  index       = 0 

  if total_lines > 0
    total_lines.times do
      current_line = read_file[index]
  
      tokens       = current_line.split(" ")
      total_tokens = tokens.size.to_i
      token_index  = 0
    
      ## The actual tokens you'll be parsing.

      if total_tokens > 0
        parsed_tokens = [] of String

        total_tokens.times do
          current_token = tokens[token_index]
 
          parsed_tokens = parsed_tokens.push(current_token)
    
          token_index = token_index + 1
        
          #puts parsed_tokens
        end

        #puts parsed_tokens
   
        token_limit  = parsed_tokens.size.to_i
        parsed_index = 0

        File.open("lisp/parsed_map.lisp", "a") { |f|
          f.puts "(defun #{expression_name}_#{index} ()"
        }      

        token_limit.times do
          new_atom = atom(parsed_tokens[parsed_index])
        
          File.open("lisp/parsed_map.lisp", "a") { |f|
            f.puts %Q(  (princ "#{new_atom[1]} "))
          }
        
          parsed_index = parsed_index + 1
        end

        File.open("lisp/parsed_map.lisp", "a") { |f|
          f.puts ")\n\n"
        }

        File.open("lisp/parsed_map.lisp", "a") { |f|
          f.puts "(#{expression_name}_#{index})"
          f.puts %Q((princ "
 "))
        }
      else
        current_token = tokens[token_index]
        
        puts current_token
      end
     
      index = index + 1
    end
  else
    puts "Erno: No input text"
  end
end

def remove_duplicates(file_name)
  old_graveyard = File.read_lines(file_name).uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  File.open(file_name, "w") { |f|
    size_limit.times do
      f.puts old_graveyard[index]
  
      index = index + 1
    end
  }
  
  # parse_lisp(file_name)
end

#######################################################################################
#                                Awasunu Interpreter                                  #
#######################################################################################
def interpret
  system("clear")

  term_of_art = "Awasunu"
  
  print "#{term_of_art} main on Linux"

  possible_dispatchers = ["encrire",             "encrireln", "expression",
                          "parle_grammaire", "nihongotupelo",    "ne_mais",
                          "cemase"]

  loop do
    dispatcher = sangehommage("\n >>> ")
  
    if    dispatcher == possible_dispatchers[0];
      string = sangehommage(" ...... ")
    
      encrire(string)
    elsif dispatcher == possible_dispatchers[1];
      string = sangehommage(" ...... ")
    
      encrireln(string)
    elsif dispatcher == possible_dispatchers[2];
      parsed_tokens = sangehommage_single_input(" ...... ")

      expression(osv(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2]),
                 sov(parsed_tokens[3], parsed_tokens[4], parsed_tokens[5]))
    elsif dispatcher == possible_dispatchers[3];
      parsed_tokens = sangehommage_single_input(" ...... ")

      parle_grammaire(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])
    elsif dispatcher == possible_dispatchers[4];
      parsed_tokens = sangehommage_single_input(" ...... ")
    
      nihongotupelo(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])
    elsif dispatcher == possible_dispatchers[5];
      a, b, c = sangehommage(" ...... "), sangehommage(" ...... "), sangehommage(" ...... ")

      ne(a, b); mais(b)
    elsif dispatcher == possible_dispatchers[6];
      parsed_tokens = sangehommage_single_input(" ...... ")
    
      encrireln(cette(parsed_tokens[0],    parsed_tokens[1]))
      encrireln(maisette(parsed_tokens[2], parsed_tokens[3]))
      encrireln(sinon(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6], parsed_tokens[7]))
    elsif dispatcher == "apgen"
      print " ...... "
      a = gets.not_nil!.chomp.to_i

      print " ...... "
      b = gets.not_nil!.chomp

      print " ...... "
      c = gets.not_nil!.chomp

      print " ...... "
      d = gets.not_nil!.chomp

      print " ...... "
      e = gets.not_nil!.chomp

      print " ...... "
      g = gets.not_nil!.chomp

      print " ...... "
      h = gets.not_nil!.chomp

      print " ...... "
      i = gets.not_nil!.chomp

      search_space   = a
      file_extension = b

      search_space.times do
        hyper_statistics(c, d,
                         e, g,
                         h, i)
                   
                         dynamic_reward_allocation

        current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
        current_information = File.read("data/statistics/label/current_information.txt")

        if current_probability > 0.999999999999999999
          current_probability = 0.9 / current_probability
        end

        if current_probability > 0.5
          program_name    = File.read("data/statistics/symbol/current_label.txt")
  
          print "[ #{program_name}, "
          print logprob(1-current_probability, current_probability)
          puts " ]"
        else
          program_name    = File.read("data/statistics/symbol/current_label.txt")
  
          print "[ #{program_name}, "
          print logprob(current_probability, 1-current_probability)
          puts " ]"
        end
      end

      program_name    = File.read("data/statistics/symbol/current_label.txt").tr ":", ""
      program_process = File.read("data/statistics/description/current_description.txt")

      File.open("#{program_name}.#{file_extension}", "a") { |f|
        wrapped_script = <<-Crystal  
        #{program_process}
        Crystal

        f.puts wrapped_script
      }
    elsif dispatcher == "viola"
      system("clear")
    elsif dispatcher == "exit"
      abort
    else
      puts "Erno: Unknown dispatcher..."
    end
  end
end
