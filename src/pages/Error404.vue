<template lang='pug'>
q-page.flex.flex-center
	//- .fixed-center
	.text-center
		p
			img(src='~assets/sad.svg' style='width:30vw;max-width:150px;')
		p.text-faded
			| Sorry, nothing here...
			strong (404)
		q-btn(color='secondary' style='width:200px;' to='/' label='Go back')
</template>

<script lang='coffee'>
export default
	name: 'Error404'
</script>