trigger HelloWorldTrigger on Account (before insert) {
	System.debug('Sanvy!');
}