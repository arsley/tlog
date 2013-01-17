
class Tlog::Command::Init < Tlog::Command

	def name
		"init"
	end

	def execute(input,output)
		output.line("execute on init called")
		if input.args[0].nil?
			#output.line("args at 0 was nil")
		elsif input.args[1].nil?
			arg1 = input.args.shift
			#output.line("arg at 0 was #{arg1}")
		else
			arg1 = input.args.shift
			arg2 = input.args.shift
			#output.line("arg at 0 was #{arg1}")
			#output.line("arg at 1 was #{arg2}")	
			raise Tlog::Error::CommandInvalid, "Command invalid"	
		end

		@storage.init_project
	end

	def options(parser, options)
		parser.banner = "usage: tlog init" 
	end

	private

end