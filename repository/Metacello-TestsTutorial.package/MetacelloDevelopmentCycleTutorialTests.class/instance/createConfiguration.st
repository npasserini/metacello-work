lessons
createConfiguration

	MetacelloToolBox
		createBaseline: '1.0-baseline'
		for: self configurationName asString
		repository: 'dictionary://', self repositoryName asString
		requiredProjects: #('MetacelloTestConfigurationOfFoo')
		packages: #('GeauxFaux' 'GeauxBeau')
		dependencies:
			{('GeauxFaux' -> #('MetacelloTestConfigurationOfFoo')).
			('GeauxBeau' -> #('GeauxFaux'))}
		groups:
			{('default' -> #('Core')).
			('Core' -> #('GeauxFaux')).
			('Tests' -> #('GeauxBeau')).
			('Core Tests' -> #('Core' 'Tests'))}.