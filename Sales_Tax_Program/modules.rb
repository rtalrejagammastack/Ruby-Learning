module Modules
    COMPANY_NAME = "GAMMASTACK"
    def Modules.showCompany
        system('clear')
        puts "\t\t\t\t\t\t\t\t\t\t"+COMPANY_NAME
    end
    PRODUCT_TYPES = [
        {type:"Basic",tax:10},
        {type:"Exempt",tax:0},
        {type:"Imported",tax:5}
    ]    
end