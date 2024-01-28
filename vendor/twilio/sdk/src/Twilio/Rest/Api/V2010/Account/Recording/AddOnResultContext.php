<?php

/**
 * This code was generated by
 * ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
 *  |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
 *  |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
 *
 * Twilio - Api
 * This is the public Twilio REST API.
 *
 * NOTE: This class is auto generated by OpenAPI Generator.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


namespace Twilio\Rest\Api\V2010\Account\Recording;

use Twilio\Exceptions\TwilioException;
use Twilio\ListResource;
use Twilio\Version;
use Twilio\InstanceContext;
use Twilio\Rest\Api\V2010\Account\Recording\AddOnResult\PayloadList;


/**
 * @property PayloadList $payloads
 * @method \Twilio\Rest\Api\V2010\Account\Recording\AddOnResult\PayloadContext payloads(string $sid)
 */
class AddOnResultContext extends InstanceContext
    {
    protected $_payloads;

    /**
     * Initialize the AddOnResultContext
     *
     * @param Version $version Version that contains the resource
     * @param string $accountSid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Recording AddOnResult resources to delete.
     * @param string $referenceSid The SID of the recording to which the result to delete belongs.
     * @param string $sid The Twilio-provided string that uniquely identifies the Recording AddOnResult resource to delete.
     */
    public function __construct(
        Version $version,
        $accountSid,
        $referenceSid,
        $sid
    ) {
        parent::__construct($version);

        // Path Solution
        $this->solution = [
        'accountSid' =>
            $accountSid,
        'referenceSid' =>
            $referenceSid,
        'sid' =>
            $sid,
        ];

        $this->uri = '/Accounts/' . \rawurlencode($accountSid)
        .'/Recordings/' . \rawurlencode($referenceSid)
        .'/AddOnResults/' . \rawurlencode($sid)
        .'.json';
    }

    /**
     * Delete the AddOnResultInstance
     *
     * @return bool True if delete succeeds, false otherwise
     * @throws TwilioException When an HTTP error occurs.
     */
    public function delete(): bool
    {

        return $this->version->delete('DELETE', $this->uri);
    }


    /**
     * Fetch the AddOnResultInstance
     *
     * @return AddOnResultInstance Fetched AddOnResultInstance
     * @throws TwilioException When an HTTP error occurs.
     */
    public function fetch(): AddOnResultInstance
    {

        $payload = $this->version->fetch('GET', $this->uri);

        return new AddOnResultInstance(
            $this->version,
            $payload,
            $this->solution['accountSid'],
            $this->solution['referenceSid'],
            $this->solution['sid']
        );
    }


    /**
     * Access the payloads
     */
    protected function getPayloads(): PayloadList
    {
        if (!$this->_payloads) {
            $this->_payloads = new PayloadList(
                $this->version,
                $this->solution['accountSid'],
                $this->solution['referenceSid'],
                $this->solution['sid']
            );
        }

        return $this->_payloads;
    }

    /**
     * Magic getter to lazy load subresources
     *
     * @param string $name Subresource to return
     * @return ListResource The requested subresource
     * @throws TwilioException For unknown subresources
     */
    public function __get(string $name): ListResource
    {
        if (\property_exists($this, '_' . $name)) {
            $method = 'get' . \ucfirst($name);
            return $this->$method();
        }

        throw new TwilioException('Unknown subresource ' . $name);
    }

    /**
     * Magic caller to get resource contexts
     *
     * @param string $name Resource to return
     * @param array $arguments Context parameters
     * @return InstanceContext The requested resource context
     * @throws TwilioException For unknown resource
     */
    public function __call(string $name, array $arguments): InstanceContext
    {
        $property = $this->$name;
        if (\method_exists($property, 'getContext')) {
            return \call_user_func_array(array($property, 'getContext'), $arguments);
        }

        throw new TwilioException('Resource does not have a context');
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString(): string
    {
        $context = [];
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.Api.V2010.AddOnResultContext ' . \implode(' ', $context) . ']';
    }
}
