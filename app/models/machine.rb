class Machine < ApplicationRecord
  acts_as_paranoid
  belongs_to :tenant

  def self.parts_count_calculation(machine_log)
    part_count=[]
    part_split = machine_log.where.not(parts_count:"-1").pluck(:parts_count).split("0")
      part_split.uniq.map do |part|                 
        unless part==[]  
          if part.count!=1 # may be last shift's parts              
            if part[0].to_i > 1 # countinuation of last part              
              if part_split[0].empty?
                part_count << part[-1].to_i
              else               
                part_count << part[-1].to_i - part[0].to_i
              end
            else              
              part_count << part[-1].to_i
            end            
          elsif part_split.index(part) != 0 && part[0] != machine_log.first.parts_count              
            part_count << part[0].to_i
          end
        end
      end                 
    parts_count = part_count.sum
  end

  def self.calculate_total_run_time(machine_log)          
    if !machine_log.where.not(parts_count:"-1").empty?
      total_run=[]
      tot_run = machine_log.where.not(parts_count:"-1").pluck(:total_run_time) 
      tot_run = tot_run.include?(0) ? tot_run.split(0).reject{|i| i.empty?} : tot_run.split(tot_run.min).reject{|i| i.empty?} 
      tot_run.map do |run|  
        total_run << (run[-1] >= run[0] ?  run[-1] - run[0] : run[-1])
      end
      total_run_time = (total_run.sum)*60
    else
      total_run_time = 0
    end 
  end
end
