class FormtypesController < ApplicationController

	def index
		@formlist = Formtype.all
		@formtype = Formtype.new
	end

	def new
		@formtype = Formtype.new
		#  プルダウンに表示させる項目
		@listdate = Formtype.all
	end

	def create
		@formtype = Formtype.new(formtype_params)
		@formtype.save
		redirect_to root_path
	end


   private

     def formtype_params
     	params[:formtype].permit(:kind, :label)
     end
end
