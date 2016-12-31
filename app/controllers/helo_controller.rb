class HeloController < ApplicationController

  def index
    if request.post?
      @title = 'Result'
      # @msg = 'you typed: ' + params['input1'] +'.'
      # @value = params['input1']
      if params['check1']
        @msg = 'you checked!'
      else
        @msg = 'not checked...'
      end
    else
      @title = 'Index'
      # @msg = 'type text...'
      # @value = ''
      @msg = 'check it...'
    end
  end

end
