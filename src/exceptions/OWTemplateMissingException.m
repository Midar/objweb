/*
 * Copyright (c) 2013, 2016, Jonathan Schleifer <js@webkeks.org>
 *
 * https://heap.zone/git/?p=objweb.git
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice is present in all copies.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#import "OWTemplateMissingException.h"

@implementation OWTemplateMissingException
@synthesize name = _name;

+ (instancetype)exceptionWithName: (OFString*)name
{
	return [[[self alloc] initWithName: name] autorelease];
}

- init
{
	OF_INVALID_INIT_METHOD
}

- initWithName: (OFString*)name
{
	self = [super init];

	@try {
		_name = [name copy];
	} @catch (id e) {
		[self release];
		@throw e;
	}

	return self;
}

- (OFString*)description
{
	return [OFString stringWithFormat:
	    @"The template %@ is missing!", _name];
}
@end
