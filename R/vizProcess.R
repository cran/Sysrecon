#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Class definitions
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# A class contains the information of the elements of the reconstruction
#' @title slotsFunction
#' @name slotsFunction
#' @concept vizProcess
#' @param variablesFile A data frame contains three different variables.

 slots <- function(variablesFile){
  Info <- list()
  for (i in 1:nrow(variablesFile)) {
    Info[i] <- variablesFile$class[i]
  }
  return(Info)
 }

#' @title systemrecon-class
#' @name systemrecon-class
#' @rdname systemrecon-class
#' @concept vizProcess
#' @exportClass systemrecon
#' @slot Taxon_id Taxonomy ID
#' @slot NCBI_gene Gene information from NCBI
#' @slot Uniprot_gene Gene information from Uniprot
#' @slot Genetic_information Genetic information
#' @slot KEGG_reaction Reactions in KEGG
#' @slot MetaCyc_reaction Reactions in MetaCyc
#' @slot Metabolic_function Metabolic function
#' @slot Metabolic_reaction Metabolic reaction
#' @slot Metabolites_id Metabolites ID
#' @slot Reconstruction_data Reconstruction data
#' @slot Genome_sequence Genome sequence
#' @slot Genome_sequence_reference  Reference of genome sequence
#' @slot Reconstruction_data_reference Reference of reconstruction data
#' @slot Data_statistics_metabolites Data statistics of metabolites
#' @slot PubChem_molecular_formula Molecular formula in PubChem database
#' @slot Brenda_molecular_formula Molecular formula in Brenda database
#' @slot Neutral_molecular_formula Neutral molecular formula
#' @slot Charged_molecular_formula Charged molecular formula
#' @slot Chebi_molecular_formula Chebi molecular formula
#' @slot Conservation_of_mass_and_charge Conservation of mass and charge
#' @slot Web_GCM_Gibbs Web GCM Gibbs
#' @slot Gibbs_free_energy_information Information of gibbs free energy
#' @slot Gene_id Gene ID
#' @slot Protein_id Protein ID
#' @slot Cellular_compartment Information of cellualr compartment
#' @slot Subsystem_information Subsystem information
#' @slot Uniform_identifier_metabolites Uniform identifiers of  metabollites
#' @slot Spontaneous_reactions Spontaneous reactions
#' @slot Extracellular_and_periplasmic_transport_reactions Extracellular and periplasmic transport reactions
#' @slot Exchange_reactions Exchange reactions
#' @slot Intracellular_transport_reactions ntracellular transport reactions
#' @slot Amino_acid_weight Amino acid weight
#' @slot Amino_acid_molecular_weight Amino acid_molecular weight
#' @slot Dry_weight Dry weight
#' @slot Amino_acid_coefficient Amino acid coefficient
#' @slot Nucleotide_coefficient Nucleotide coefficient
#' @slot Nucleotide_weight Nucleotide weight
#' @slot Nucleotide_molecular_weight Nucleotide molecular weight
#' @slot Biomass_reactions Biomass reactions
#' @slot Demand_reactions Demand reactions
#' @slot Sink_reactions Sink reactions
#' @slot Scatter_plot_stoichiometric_matrix Scatter plot of stoichiometric matrix
#' @slot Objective_reaction Objective reaction
#' @slot Constraints Constraints of the model
#' @slot Mass_charge_conservation_assessment assessment of conservation of mass and charge
#' @slot Terminal_metabolites Terminal metabolites
#' @slot Gap_reactions Gap reactions
#' @slot Missing_exchange_reactions Missing exchange reactions
#' @slot Type_III_pathway Type III pathway
#' @slot Network_gaps Network gaps
#' @slot Biomass_metabolites  Biomass metabolites
#' @slot miniaml_or_maxiaml miniaml or maxiaml
#' @slot Metabolic_flux_value Value of metabolic flux
#' @slot Growth Prediction of the growth of model
#' @slot Secretion_product Product of secretion
#' @slot Mutisecretion Multisecretion
#' @slot Rich_media Environment of rich media
#' @slot Block_reactions Block reactions
#' @slot Knockout Knockout the single gene or reaction
#' @slot Model_predict_correctly Predict the model correctly
#' @slot Model_growing_too_fast Assess whether the model grow too fast
#' @slot Cofactors Cofactors
#' @slot FBA Flux balance analysis
#' @slot GPR Gene-protein reaction
#' @slot Output Output the file
#' @slot Iteration Iteration
#' @slot Test Test
#' @slot Assessment Assessment
#' @slot Identifiers_metabolites Identifiers of metabolites
#' @slot Output_file Output the file
#' @slot Elemental_balance Elemental balance
#' @slot Biomass_metabolites_coefficient Coefficients of biomass and metabolites
#' @exportClass systemrecon

  label <- c('Taxon_id','NCBI_gene','Uniprot_gene','Genetic_information','KEGG_reaction','MetaCyc_reaction','Metabolic_function',
             'Metabolic_reaction','Metabolites_id','Reconstruction_data','Genome_sequence','Genome_sequence_reference',
             'Reconstruction_data_reference','Data_statistics_metabolites','PubChem_molecular_formula','Brenda_molecular_formula',
             'Neutral_molecular_formula','Charged_molecular_formula','Chebi_molecular_formula','Conservation_of_mass_and_charge',
             'Web_GCM_Gibbs','Gibbs_free_energy_information','Gene_id','Protein_id','Cellular_compartment','Subsystem_information',
             'Uniform_identifier_metabolites','Spontaneous_reactions','Extracellular_and_periplasmic_transport_reactions',
             'Exchange_reactions','Intracellular_transport_reactions','Amino_acid_weight','Amino_acid_molecular_weight','Dry_weight',
             'Amino_acid_coefficient','Nucleotide_coefficient','Nucleotide_weight','Nucleotide_molecular_weight','Biomass_reactions',
             'Demand_reactions','Sink_reactions','Scatter_plot_stoichiometric_matrix','Objective_reaction','Constraints',
             'Mass_charge_conservation_assessment','Terminal_metabolites','Gap_reactions','Missing_exchange_reactions',
             'Type_III_pathway','Network_gaps','Biomass_metabolites','miniaml_or_maxiaml','Metabolic_flux_value','Growth',
             'Secretion_product','Mutisecretion','Rich_media','Block_reactions','Knockout','Model_predict_correctly',
             'Model_growing_too_fast','Cofactors','FBA','GPR','Output','Iteration','Test','Assessment','Identifiers_metabolites',
             'Output_file','Elemental_balance','Biomass_metabolites_coefficient')
  formula <- c("CI", "CI", "CI", "DI", "CI", "CI", "DI", "DI", "DI", "LI", "CI", "CI", "LI", "DI", "DI", "DI", "DI", "DI", "DI",
               "DI", "DI", "DI", "DI", "DI", "DI","DI", "DI", "DI", "DI","DI", "DI", "DI", "DI", "NW", "DI", "DI", "DI", "DI",
               "DI", "DI", "DI", "LI", "CI", "DI", "DI", "DI", "DI", "DI", "DI", "DI","DI", "CB","DI", "YB", "CI", "DI", "DI",
               "DI", "YB", "YB", "YB", "DI", "O", "DI", "O","O", "O", "O", "DI", "CI", "DI", "DI")
  content <- c("[TI]","[NC]","[UN]","[GI]","[KE]","[ME]","[MF]","[MR]","[M]","[RD]","[GS]","[GS2]","[RD2]","[DS]",
               "[PU]","[B]","[NMF]","[CMF]","[CH]","[CMC]","[WG]","[GFE]","[GE]","[P]","[CC]","[SI]","[UI]","[SR]",
               "[EPTR]","[ER]","[ITR]","[AAW]","[AAMW]","[DW]","[AA]","[NU]","[NW]","[NMW]","[BR]","[DR]","[SR2]","[SP]",
               "[OR]","[CON]","[MCCA]","[TM]","[GR]","[MER]","[TP]","[NG]","[BM]","[MM]","[MF2]","[G]","[S]","[MU]",
               "[RM]","[BM2]","[K]","[MPC]","[MGF]","[C]","[F]","[GPR]","[O]","[I]","[T]","[A]","[ID]","[F]","[Eb]","[CO]")
  class <- c("character","character","character","data.frame","character","character","data.frame","data.frame","data.frame",
             "list","character","character","list","data.frame","data.frame","data.frame","data.frame","data.frame",
             "data.frame","data.frame","data.frame","data.frame","data.frame","data.frame","data.frame","data.frame","data.frame",
             "data.frame","data.frame","data.frame","data.frame","data.frame","data.frame","numeric","data.frame","data.frame",
             "data.frame","data.frame","data.frame","data.frame","data.frame","list","character","data.frame","data.frame",
             "data.frame","data.frame","data.frame","data.frame","data.frame","data.frame","character","data.frame","logical",
             "character","data.frame","data.frame","data.frame","logical","logical","logical","data.frame","character",
             "data.frame","character","character","character","character","data.frame","character","data.frame","data.frame"
  )

  variablesFile <- data.frame(label,formula,content,class)

  slotInfo <- list()
  slotInfo <- slots(variablesFile)
  names(slotInfo) <- variablesFile$label

  setClass('systemrecon', slots = slotInfo)

  #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  # Functions
  #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#' Create a function can visualiaze the steps used in the metabolic reconstruction.
#' @title vizProcess
#' @param text The characters processed with the collapse = ' '.
#' @param stepsMatrix A data frame contains the marker words, threshold value, steps, group and other information about the metabolic reconstruction. The default file is in the data.
#' @param stepTypes A data frame contains the labels and groups of the metabolic reconstructions steps. The default file is in the data.
#' @param contentTypes A data frame contains the labels and groups of the metabolic reconstructions content The default file is in the data.
#' @import tidyverse
#' @import SnowballC
#' @import ggtree
#' @import SnowballC
#' @import patchwork
#' @importFrom stats hclust dist
#' @importFrom grDevices colorRampPalette
#' @importFrom methods new
#' @return The pictures that visualize the steps of the metabolic reconstruction.
#' @export
#' @examples
#' \donttest{exam <- vizProcess(text, stepsMatrix, stepTypes,contentTypes)}

  vizProcess <- function(text, stepsMatrix, stepTypes, contentTypes){
    wordsMatrix <- get_term_matrix(text)
    wordsMatrix <- as.data.frame(wordsMatrix)

    matrixProcess <- map_word_to_step(wordsMatrix, stepsMatrix)
    matrixProcess <- data.frame(matrixProcess)

    # delete the information of the frequency
    dataProcess <- matrixProcess[,-1]
    # NA is transformed into 0
    dataProcess[is.na(dataProcess)] <- 0
    # delete the rows or columns that all of which are 0
    dataProcess <- dataProcess[!apply(dataProcess, 1, function(x){all(x == 0)}),]
    dataProcess <- dataProcess[,!apply(dataProcess, 2, function(x){all(x == 0)})]

    if(any(dim(dataProcess))){
      matrixProcessFigure <- draw_step_tree(matrixProcess, stepsMatrix, stepTypes, contentTypes)
      print(matrixProcessFigure)
    } else {
      message("Literature information content is too little.")
    }

     matrixProcessFile <- data.frame(step = rownames(matrixProcess),degree = matrixProcess$degree)
     matrixProcessFile <- matrixProcessFile%>%mutate(step_ID = paste0('step',rownames(matrixProcessFile)))
     matrixProcessFile <- matrixProcessFile[matrixProcessFile$degree != 0,]

      test <- new('systemrecon')

      y <- list()
      i <- 1
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step1',])){
        test@Genetic_information <- data.frame(geneID = character(), geneInfo = character())
        test@Genetic_information
        y[[1]] <- c('step1: Taxon_id + NCBI_gene + Uniprot_gene => Genetic_information Add "Genetic_information" info',test@Genetic_information)
        i <- i+1
      }

      #step2

      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step2',])){
        test@Metabolic_function<- data.frame(metabolicFunction = character())
        y[[i]] <- c('step2: Genetic_information + KEGG_reaction + MetaCyc_reaction => Metabolic_function Add "Metabolic_function" info',
                    test@Metabolic_function)
        i <- i+1
      }

      #step3
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step3',]) ){
        test@Metabolic_reaction <- data.frame(metabolicReaction = character())
        y[[i]] <- c('step3: Metabolic_function + KEGG_reaction + MetaCyc_reaction => Metabolic_reaction Add "Metabolic_reaction" info',test@Metabolic_reaction)
        i <- i+1
      }

      #step4
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step4',])){
        test@Reconstruction_data <- list(rxns = character(), mets = character(), gpr = character(),
                                         s = c('It is a matrix(m * n)'), lb = character(), ub = character())
        y[[i]] <- c('step4: Metabolic_reaction + GPR => Reconstruction_data "Reconstruction_data" info',
                    test@Reconstruction_data)
        i <- i+1
      }

      #step5
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step5',])){
        chr <- c('step5: Genome_sequence + Genome_sequence_reference + Reconstruction_data_reference => Reconstruction_data Add "Reconstruction_data" info')
        test@Reconstruction_data <- list(rxns = character(), mets = character(), gpr = character(),
                                         s = c('It is a matrix(m * n)'), lb = character(), ub = character())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step7
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step7',])){
        chr <- c('step7: Metabolites_id + Cofactors => Data_statistics_metabolites Add "Data_statistics_metabolites" info')
        test@Data_statistics_metabolites = data.frame(mets = character(), cofactor = character(), result = character())
        y[[i]] <- c(chr,test@Data_statistics_metabolites)
        i <- i+1
      }

      #step8

      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step8',])){
        chr <- c('step8: KEGG_reaction + PubChem_molecular_formula + Metabolites_id => Neutral_molecular_formula Add "Neutral_molecular_formula" info')
        test@Neutral_molecular_formula = data.frame(mets = character(), neutral = character())
        y[[i]] <- c(test@Neutral_molecular_formula)
        i <- i+1
      }

      #step9
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step9',])){
        chr <- c('step9: KEGG_reaction + Brenda_molecular_formula + Metabolites_id => Charged_molecular_formula Add "Charged_molecular_formula" info')
        test@Charged_molecular_formula = data.frame(mets = character(), charged = character())
        y[[i]] <- c(chr,test@Charged_molecular_formula)
        i <- i+1
      }


      #step10
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step10',])){
        chr <- c('step10: Chebi_molecular_formula + Metabolic_reaction => Conservation_of_mass_and_charge Add "Conservation_of_mass_and_charge" info')
        test@Conservation_of_mass_and_charge = data.frame(rxns = character(), conservation = logical())
        y[[i]] <- c(chr,test@Conservation_of_mass_and_charge)
        i <- i+1
      }

      #step11
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step11',])){
        chr <- c('step11: Web_GCM_Gibbs + Metabolic_reaction => Gibbs_free_energy_Information Add "Gibbs_free_energy_Information" info')
        test@Gibbs_free_energy_information = data.frame(rxns = character(), Gibbs = numeric())
        y[[i]] <- c(chr,test@Gibbs_free_energy_information)
        i <- i+1
      }

      #step12
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step12',])){
        chr <- c('step12: Uniprot_gene + Gene_id + Protein_id => Cellular_compartment Add "Cellular_compartment" info')
        test@Cellular_compartment = data.frame(mets = character(), cellularLocation = character())
        y[[i]] <- c(chr,test@Cellular_compartment)
        i <- i+1
      }

      #step13
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step13',])){
        chr <- c('step13: KEGG_reaction + Metabolic_reaction => Subsystem_information Add "Subsystem_information" info')
        test@Subsystem_information = data.frame(rxns = character(), subsystem = character())
        y[[i]] <- c(chr,test@Subsystem_information)
        i <- i+1
      }

      #step15
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step15',])){
        chr <- c('step15: KEGG_reaction + MetaCyc_reaction + Metabolic_reaction + Metabolites_id => Identifiers_metabolites Add "Identifiers_metabolites" info')
        test@Identifiers_metabolites = data.frame(rxns = character(), identifiers_kegg_rxns = character(), identifiers_metacyc_rxns = character(),
                                                  mets = character(), identifiers_kegg_mets = character(), identifiers_metacyc_mets = character())
        y[[i]] <- c(chr,test@Identifiers_metabolites)
        i <- i+1
      }

      #step16
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step16',])){
        chr <- c('step16: Metabolic_reaction + Metabolites_id + Identifiers_metabolites => Uniform_identifier_metabolites Add "Uniform_identifier_metabolites" info')
        test@Uniform_identifier_metabolites = data.frame(rxns = character(), identifiers_kegg_rxns = character(),
                                                         mets = character(), identifiers_kegg_mets = character())
        y[[i]] <- c(chr,test@Uniform_identifier_metabolites)
        i <- i+1
      }

      #step21
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step21',])){
        chr <- c('step21: Spontaneous_reactions + Reconstruction_data => Reconstruction_data Add "Spontaneous_reactions(sp)" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(),
                                        s = c('It is a matrxi(m * (n+sp))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step22
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step22',])){
        chr <- c('step22: Extracellular_and_periplasmic_transport_reactions + Reconstruction_data => Reconstruction_data Add "Extracellular_and_periplasmic_transport_reactions(ep)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(),
                                        s = c('It is a matrxi(m * (n+sp+ep))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step23
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step23',])){
        chr <- c('step23: Exchange_reactions + Reconstruction_data => Reconstruction_data Add "Exchange_reactions(ex)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(),
                                        s = c('It is a matrxi(m * (n+sp+ep+ex))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step24
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step24',])){
        chr <- c('step24: Intracellular_transport_reactions + Reconstruction_data => Reconstruction_data Add "Intracellular_transport_reactions(it)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(),
                                        s = c('It is a matrxi(m * (n+sp+ep+ex+it))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step28
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step28',])){
        chr <- c('step28: Amino_acid_weight + Amino_acid_molecular_weight + Dry_weight => Amino_acid_coefficient Add "Amino_acid_coefficient" info')
        test@Amino_acid_coefficient = data.frame(aa = character(), coefficient = numeric())
        y[[i]] <- c(chr,test@Amino_acid_coefficient)
        i <- i+1
      }

      #step30
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step30',])){
        chr <- c('step30: Nucleotide_weight + Nucleotide_molecular_weight + Dry_weight => Nucleotide_coefficient Add "Nucleotide_coefficient" info')
        test@Nucleotide_coefficient = data.frame(nucleotides = character(), coefficient = numeric())
        y[[i]] <- c(chr,test@Nucleotide_coefficient)
        i <- i+1
      }

      #step35
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step35',])){
        chr <- c('step35: Biomass_reactions + Biomass_metabolites_coefficient + Reconstruction_data => Reconstruction_data Add "Biomass_reactions(br)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(),
                                        s = c('It is a matrxi(m * (n+sp+ep+ex+it+br))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step37
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step37',])){
        chr <- c('step37: Demand_reactions + Reconstruction_data => Reconstruction_data Add "Demand_reactions(dr)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(),
                                        s = c('It is a matrxi(m * (n+sp+ep+ex+it+br+dr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step38
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step38',])){
        chr <- c('step38: Sink_reactions + Reconstruction_data => Reconstruction_data Add "Sink_reactions(sr)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(),
                                        s = c('It is a matrxi(m * (n+sp+ep+ex+it+br+dr+sr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step42
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step42',])){
        chr <- c('step42: Reconstruction_data => Scatter_plot_stoichiometric_matrix Add "Scatter_plot_stoichiometric_matrix" info')
        test@Scatter_plot_stoichiometric_matrix = list(ggplot2 = character())
        y[[i]] <- c(chr,test@Scatter_plot_stoichiometric_matrix)
        i <- i+1
      }

      #step43
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step43',])){
        chr <- c('step43: Objective_reaction + Reconstruction_data => Reconstruction_data add "Objective_reaction" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step44
      if( nrow(matrixProcessFile[matrixProcessFile$step_ID =='step44',])){
        chr <- c('step44: Constraints + Reconstruction_data => Reconstruction_data Add "Constraints" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step45
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step45',])){
        chr <- c('step45: Metabolic_reaction + Test => Elemental_balance Add "Elemental_balance" info')
        test@Elemental_balance = data.frame(rxns = character(), balance = logical())
        y[[i]] <- c(chr,test@Elemental_balance)
        i <- i+1
      }

      #step46
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step46',])){
        chr <- c('step46: Metabolic_reaction + Assessment => Mass_Charge_Conservation_Assessment Add "Mass_Charge_Conservation_Assessment" info')
        test@Mass_Charge_Conservation_Assessment = data.frame(rxns = character(), assessment = character())
        y[[i]] <- c(chr,test@Mass_Charge_Conservation_Assessment)
        i <- i+1
      }

      #step47
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step47',])){
        chr <- c('step47: Metabolic_reaction => Terminal_metabolites Add "Terminal_metabolites" info')
        test@Terminal_metabolites = data.frame(Terminal_metabolite = character())
        y[[i]] <- c(chr,test@Terminal_metabolites)
        i <- i+1
      }

      #step48
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step48',])){
        chr <- c('step48: KEGG_reaction + MetaCyc_reaction + Terminal_metabolites => Gap_reactions Add "Gap_reactions" info')
        test@Gap_reactions = data.frame(Gap_reaction = character())
        y[[i]] <- c(chr,test@Gap_reactions)
        i <- i+1
      }

      #step49
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step49',])){
        chr <- c('step49: Gap_reactions + Reconstruction_data => Reconstruction_data Add "Gap_reactions(gr)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step51
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step51',])){
        chr <- c('step51: Missing_exchange_reactions + Reconstruction_data => Reconstruction_data Add "Missing_exchange_reactions(mr)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step52
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step52',])){
        chr <- c('step52: Missing_exchange_reactions + Constraints => Reconstruction_data Add "Constraints" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step53
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step53',])){
        chr <- c('step53: Reconstruction_data + Subsystem_information => Type_III_pathway Add "Type_III_pathway" info')
        test@Type_III_pathway = data.frame(TypeIII = character())
        y[[i]] <- c(chr,test@Type_III_pathway)
        i <- i+1
      }

      #step57
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step57',])){
        chr <- c('step57: Reconstruction_data + Iteration => Network_gaps Add "Network_gaps" info')
        test@Network_gaps = data.frame(Network_gap = character())
        y[[i]] <- c(chr,test@Network_gaps)
        i <- i+1
      }

      #step58
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step58',])){
        chr <- c('step58: Biomass_reactions => Biomass_metabolites Add "Biomass_metabolites" info')
        test@Biomass_metabolites = data.frame(biomets = character())
        y[[i]] <- c(chr,test@Biomass_metabolites)
        i <- i+1
      }

      #step59
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step59',])){
        chr <- c('step59: Biomass_metabolites + Demand_reactions + Reconstruction_data => Reconstruction_data Add "Biomass_metabolites demand_reactions(bdr)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step60
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step60',])){
        chr <- c('step60: Objective_reaction + Demand_reactions + Reconstruction_data => Reconstruction_data Add "Objective_reaction" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step61
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step61',])){
        chr <- c('step61: min_or_max + Objective_reaction + Reconstruction_data => Reconstruction_data Add "min_or_max" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(), max = logical(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step62
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step62',])){
        chr <- c('step62: Reconstruction_data + FBA => Metabolic_flux_value Add "Metabolic_flux_value" info')
        test@Metabolic_flux_value = data.frame(rxns = character(), flux = numeric())
        y[[i]] <- c(chr,test@Metabolic_flux_value)
        i <- i+1
      }

      #step63
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step63',])){
        chr <- c('step63: Constraints + Reconstruction_data + Rich_media => Growth "test model"')
        test@Growth = logical()
        y[[i]] <- c(chr,test@Growth)
        i <- i+1
      }

      #step65
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step65',])){
        chr <- c('step65: Constraints + Secretions + Reconstruction_data => Reconstruction_data Add "Constraints" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step66
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step66',])){
        chr <- c('step66: Objective_reaction + Secretions + Reconstruction_data => Reconstruction_data Add "Objective_reaction" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step67
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step67',])){
        chr <- c('step67: Secretions + min_or_max + Reconstruction_data => Reconstruction_data Add "min_or_max" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step68
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step68',])){
        chr <- c('step68: Constraints + Mutisecretion + Reconstruction_data => Reconstruction_data Add "Constraints" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step70
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step70',])){
        chr <- c('step70: Secretions + Exchange_reactions + Reconstruction_data => Reconstruction_data Add "Secretion exchange_reactions(ser)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr+ser))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step71
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step71',])){
        chr <- c('step71: Objective_reaction + Mutisecretion + Reconstruction_data => Reconstruction_data Add "Objective_reaction" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr+ser))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step72
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step72',])){
        chr <- c('step72: Mutisecretion + min_or_max + Reconstruction_data => Reconstruction_data Add "min_or_max" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr+ser))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step73
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='ste73',])){
        chr <- c('step73: Constraints + Rich_media + Reconstruction_data => Reconstruction_data Add "Constraints" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr+ser))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step74
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step74',])){
        chr <- c('step74: Reconstruction_data + Metabolic_reaction => Block_reactions Add "Block_reactions" info')
        test@Block_reactions = data.frame(blockrxns = character())
        y[[i]] <- c(chr,test@Block_reactions)
        i <- i+1
      }

      #step75
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step75',])){
        chr <- c('step75: Block_reactions + Metabolites_id + Reconstruction_data => Reconstruction_data Add "Block_reactions(blr)" info, update "Reconstruction_data"')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr+ser+blr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step76
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step76',])){
        chr <- c('step76: Gene_id + Knockout + Reconstruction_data => Metabolic_flux_value Add "Metabolic_flux_value" info')
        test@Metabolic_flux_value = data.frame(rxns = character(), flux = numeric())
        y[[i]] <- c(chr,test@Metabolic_flux_value)
        i <- i+1
      }

      #step79
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step79',])){
        chr <- c('step79: Knockout + Metabolic_reaction + Reconstruction_data => Metabolic_flux_valu nAdd "Metabolic_flux_value" info')
        test@Metabolic_flux_value = data.frame(rxns = character(), flux = numeric())
        y[[i]] <- c(chr,test@Metabolic_flux_value)
        i <- i+1
      }

      #step80
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step80',])){
        chr <- c('step80: Constraints + Reconstruction_data => Model_predict_correctly Add "Model_predict_correctly" info')
        test@Model_predict_correctly = logical()
        y[[i]] <- c(chr,test@Model_predict_correctly)
        i <- i+1
      }

      #step83
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step83',])){
        chr <- c('step83: Rich_media + Biomass_reactions + min_or_max + Reconstruction_data => Reconstruction_data Add "min_or_max" info')
        test@Reconstruction_data = list(rxns = character(), mets = character(), gpr = character(), obj = numeric(),
                                        s = c('It is a matrxi(m * (n+s+ep+ex+it+br+dr+sr+gr+mr+ser+blr))'), lb = numeric(), ub = numeric())
        y[[i]] <- c(chr,test@Reconstruction_data)
        i <- i+1
      }

      #step90
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step90',])){
        chr <- c('step90: Knockout + Metabolic_reaction => Model_growing_too_fast Add "Model_growing_too_fast" info')
        test@Model_growing_too_fast = logical()
        y[[i]] <- c(chr,test@Model_growing_too_fast)
        i <- i+1
      }

      #step93
      if(nrow(matrixProcessFile[matrixProcessFile$step_ID =='step93',])){
        chr <- c('step93: Reconstruction_data + Output => Output_file Add "Output_file" info')
        test@Output_file = character()
        y[[i]] <- c(chr,test@Output_file)
      }

      return(y)
  }



